(*
 * Copyright © 2012 http://io7m.com
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

let error (message : string) : unit =
  prerr_endline ("fppg: error: " ^ message)

let fatal (message : string) : unit =
  failwith ("fppg: fatal: " ^ message)

let usage _ : unit =
  fatal "usage: java-package [signed|unsigned] integral-bits fractional-bits"

type signed = Signed | Unsigned

type size = { size_value : Num.num }

type definition = {
  definition_package       : string;
  definition_signed        : signed;
  definition_size_integral : size;
  definition_size_fraction : size
}

let definition_java_class_name (d : definition) : string =
  let is = Num.string_of_num d.definition_size_integral.size_value in
  let fs = Num.string_of_num d.definition_size_fraction.size_value in
    begin match d.definition_signed with
    | Signed   -> "FixedI" ^ is ^ "F" ^ fs ^ "Signed"
    | Unsigned -> "FixedI" ^ is ^ "F" ^ fs ^ "Unsigned"
    end

let definition_bits_required (d : definition) : Num.num =
  begin match d.definition_signed with
  | Signed   -> Num.add_num (Num.Int 1) (Num.add_num d.definition_size_integral.size_value d.definition_size_fraction.size_value)
  | Unsigned -> Num.add_num d.definition_size_integral.size_value d.definition_size_fraction.size_value
  end

let check_definition_sizes (d : definition) : definition option =
  let req   = definition_bits_required d in
  let req_s = Num.string_of_num req      in
    begin match d.definition_signed with
    | Signed ->
      begin match Num.gt_num req (Num.Int 63) with
      | true  -> (error ("integral + fractional size + 1 (" ^ req_s ^ ") exceeds 63 bits"); None)
      | false -> Some d
      end
    | Unsigned ->
      begin match Num.gt_num req (Num.Int 63) with
      | true  -> (error ("integral + fractional size (" ^ req_s ^ ") exceeds 63 bits"); None)
      | false -> Some d
      end
    end

let check_definition_signs (d : definition) : definition option =
  begin match
    (Num.ge_num d.definition_size_integral.size_value (Num.Int 1),
     Num.ge_num d.definition_size_fraction.size_value (Num.Int 1)) with
    | (true, true) -> Some d
    | _            -> (error "integral and fractional sizes must be greater than 0"; None)
  end

let check_definition (d : definition) : definition option =
  begin match check_definition_signs d with
  | Some d -> check_definition_sizes d
  | None   -> None
  end

type type_type = Java_Byte | Java_Short | Java_Int | Java_Long

let string_of_type (t : type_type) : string =
  begin match t with
  | Java_Byte  -> "byte"
  | Java_Short -> "short"
  | Java_Int   -> "int"
  | Java_Long  -> "long"
  end

type type_values = {
  type_mask_sign      : Num.num;
  type_mask_integral  : Num.num;
  type_mask_fraction  : Num.num;
  type_shift_sign     : Num.num;
  type_shift_integral : Num.num;
  type_epsilon        : Num.num;
  type_max_integral   : Num.num;
  type_max_fractional : Num.num;
  type_max_value      : Num.num;
  type_min_integral   : Num.num;
  type_min_fractional : Num.num;
  type_min_value      : Num.num;
  type_integer_type   : type_type;
}

let mask_sign (d : definition) : Num.num =
  begin match d.definition_signed with
  | Signed   -> Num.power_num (Num.Int 2) (Num.add_num d.definition_size_integral.size_value d.definition_size_fraction.size_value)
  | Unsigned -> Num.Int 0
  end

(* ((2 ** size_integral) - 1) * (2 ** size_fractional) *)
let mask_integral (d : definition) : Num.num =
  let n = Num.power_num (Num.Int 2) d.definition_size_integral.size_value in
  let m = Num.sub_num n (Num.Int 1)                                       in
  let o = Num.power_num (Num.Int 2) d.definition_size_fraction.size_value in
    Num.mult_num m o

(* 2 ** size_fractional - 1 *)
let mask_fraction (d : definition) : Num.num =
  let n = Num.power_num (Num.Int 2) d.definition_size_fraction.size_value in
    Num.sub_num n (Num.Int 1)

let shift_sign (d : definition) : Num.num =
  begin match d.definition_signed with
  | Signed   -> Num.add_num d.definition_size_integral.size_value d.definition_size_fraction.size_value
  | Unsigned -> Num.Int 0
  end

let shift_integral (d : definition) : Num.num =
  d.definition_size_fraction.size_value

(* 1 / (2 ** fractional_size) *)
let epsilon (d : definition) : Num.num =
  let n = Num.power_num (Num.Int 2) d.definition_size_fraction.size_value in
    Num.div_num (Num.Int 1) n

(* (2 ** integral_size) - 1 *)
let max_integral_value (d : definition) : Num.num =
  let n = Num.power_num (Num.Int 2) d.definition_size_integral.size_value in
    Num.sub_num n (Num.Int 1)

(* 1 - epsilon *)
let max_fractional_value (d : definition) : Num.num =
  Num.sub_num (Num.Int 1) (epsilon d)

(* max_integral_value + max_fractional_value *)
let max_value (d : definition) : Num.num =
  Num.add_num (max_integral_value d) (max_fractional_value d)

(* 0 - max_integral_value, unless unsigned *)
let min_integral_value (d : definition) : Num.num =
  begin match d.definition_signed with
  | Signed   -> Num.sub_num (Num.Int 0) (max_integral_value d)
  | Unsigned -> Num.Int 0
  end

let min_fractional_value (d : definition) : Num.num = Num.Int 0

(* 0 - max_value, unless unsigned *)
let min_value (d : definition) : Num.num =
  begin match d.definition_signed with
  | Signed   -> Num.sub_num (Num.Int 0) (max_value d)
  | Unsigned -> Num.Int 0
  end

let type_required (d : definition) : type_type =
  let r = definition_bits_required d in
    if Num.le_num r (Num.Int 8) then
      Java_Byte
    else if Num.le_num r (Num.Int 16) then
      Java_Short
    else if Num.le_num r (Num.Int 32) then
      Java_Int
    else
      Java_Long

let calculate_values (d : definition) : type_values = {
  type_mask_sign      = mask_sign d;
  type_mask_integral  = mask_integral d;
  type_mask_fraction  = mask_fraction d;
  type_shift_sign     = shift_sign d;
  type_shift_integral = shift_integral d;
  type_epsilon        = epsilon d;
  type_max_integral   = max_integral_value d;
  type_max_fractional = max_fractional_value d;
  type_max_value      = max_value d;
  type_min_integral   = min_integral_value d;
  type_min_fractional = min_fractional_value d;
  type_min_value      = min_value d;
  type_integer_type   = type_required d
}

(* IEEE754 double precision *)
let out_precision : int = 15

let type_diagnostics (d : definition) (t : type_values) : string =
  String.concat "\n" [
    ("mask_sign      : " ^ (Num.string_of_num t.type_mask_sign));
    ("mask_int       : " ^ (Num.string_of_num t.type_mask_integral));
    ("mask_frac      : " ^ (Num.string_of_num t.type_mask_fraction));
    ("shift_sign     : " ^ (Num.string_of_num t.type_shift_sign));
    ("shift_int      : " ^ (Num.string_of_num t.type_shift_integral));
    ("epsilon        : " ^ (Num.approx_num_exp out_precision t.type_epsilon));
    ("max_value      : " ^ (Num.approx_num_exp out_precision t.type_max_value));
    ("max_integral   : " ^ (Num.string_of_num t.type_max_integral));
    ("max_fractional : " ^ (Num.approx_num_exp out_precision t.type_max_fractional));
    ("min_value      : " ^ (Num.approx_num_exp out_precision t.type_min_value));
    ("min_integral   : " ^ (Num.string_of_num t.type_min_integral));
    ("min_fractional : " ^ (Num.approx_num_exp out_precision t.type_min_fractional));
    ("integer_type   : " ^ (string_of_type t.type_integer_type));
    ("bits_required  : " ^ (Num.string_of_num (definition_bits_required d)))
  ]

let cast (t : type_type) (s : string) : string =
  begin match t with
  | Java_Long -> s
  | o         -> "(" ^ string_of_type t ^ ") (" ^ s ^ ")"
  end

let build_java_signed (d : definition) (t : type_values) : string =
  let class_name = definition_java_class_name d       in
  let type_name  = string_of_type t.type_integer_type in
    String.concat "\n" [
"/* Automatically generated. DO NOT EDIT. */";
"package " ^ (d.definition_package) ^ ";";
"";
"/**";
" * Signed fixed-point serialization type using " ^ (Num.string_of_num d.definition_size_integral.size_value);
" * bits to store the integral part and " ^ (Num.string_of_num d.definition_size_fraction.size_value) ^ " bits ";
" * to store the fractional part.";
" */";
"";
"public final class " ^ class_name;
"{";
"  /** The total number of bits used to store the fixed point value. **/";
"  public static final long BITS_USED = " ^ (Num.string_of_num (definition_bits_required d)) ^ ";";
"  /** The number of bits used for the integral part of the fixed point value. **/";
"  public static final long BITS_INTEGRAL = " ^ (Num.string_of_num d.definition_size_integral.size_value) ^ ";";
"  /** The number of bits used for the fractional part of the fixed point value. **/";
"  public static final long BITS_FRACTIONAL = " ^ (Num.string_of_num d.definition_size_fraction.size_value) ^ ";";
"";
"  /** The bit mask used to extract the sign bit from the fixed point value. **/";
"  public static final long MASK_SIGN = " ^ (Hex_num.string_of_num_hex t.type_mask_sign) ^ "L;";
"  /** The bit mask used to extract the integral part of the fixed point value. **/";
"  public static final long MASK_INTEGRAL = " ^ (Hex_num.string_of_num_hex t.type_mask_integral) ^ "L;";
"  /** The bit mask used to extract the fractional part of the fixed point value. **/";
"  public static final long MASK_FRACTIONAL = " ^ (Hex_num.string_of_num_hex t.type_mask_fraction) ^ "L;";
"";
"  /** The number of bits the sign bit is shifted in the fixed point value. **/";
"  public static final long SHIFT_SIGN = " ^ (Num.string_of_num t.type_shift_sign) ^ ";";
"  /** The number of bits the integral part is shifted in the fixed point value. **/";
"  public static final long SHIFT_INTEGRAL = " ^ (Num.string_of_num t.type_shift_integral) ^ ";";
"";
"  /** The smallest representable fractional value based on the number of bits available. **/";
"  public static final double EPSILON = " ^ (Num.approx_num_exp out_precision t.type_epsilon) ^ ";";
"";
"  /** The largest representable integral value based on the number of bits available. **/";
"  public static final long MAX_INTEGRAL = " ^ (Hex_num.string_of_num_hex t.type_max_integral) ^ "L;";
"  /** The largest representable fractional value based on the number of bits available. **/";
"  public static final double MAX_FRACTIONAL = " ^ (Num.approx_num_exp out_precision t.type_max_fractional) ^ ";";
"  /** The largest representable value based on the number of bits available. **/";
"  public static final double MAX_VALUE = " ^ (Num.approx_num_exp out_precision t.type_max_value) ^ ";";

"  /** The smallest representable integral value based on the number of bits available. **/";
"  public static final long MIN_INTEGRAL = " ^ (Hex_num.string_of_num_hex t.type_min_integral) ^ "L;";
"  /** The smallest representable fractional value based on the number of bits available. **/";
"  public static final double MIN_FRACTIONAL = " ^ (Num.approx_num_exp out_precision t.type_min_fractional) ^ ";";
"  /** The smallest representable value based on the number of bits available. **/";
"  public static final double MIN_VALUE = " ^ (Num.approx_num_exp out_precision t.type_min_value) ^ ";";
"";
"  public final " ^ type_name ^ " value;";
"";
"  /**";
"   * Encode the given double-precision value as a " ^ class_name ^ " value.";
"   * Note that only values in the range MIN_VALUE >= input <= MAX_VALUE can";
"   * be encoded correctly.";
"   */";
"";
"  public static " ^ type_name ^ " fromDouble(";
"    final double input)";
"  {";
"    final long sign = (input < 0) ? " ^ class_name ^ ".MASK_SIGN : 0;";
"    final double abs_input = Math.abs (input);";
"    final long input_integral = (long) abs_input;";
"    final double input_fraction = abs_input - input_integral;";
"    final long inte = input_integral << " ^ class_name ^ ".SHIFT_INTEGRAL;";
"    final long mult = 1L << " ^ class_name ^ ".BITS_FRACTIONAL;";
"    final long frac = Math.round(mult * input_fraction);";
"    return " ^ (cast t.type_integer_type "sign | inte | frac") ^ ";";
"  }";
"";
"  /**";
"   * Decode the given " ^ class_name ^ " value, returning a double-precision floating point value.";
"   * The resulting value will be in the range MIN_VALUE >= input <= MAX_VALUE.";
"   */";
"";
"  public static double toDouble(";
"    final " ^ type_name ^ " x)";
"  {";
"    final long sign_masked = (x & " ^ class_name ^ ".MASK_SIGN);";
"    final long sign = sign_masked >> " ^ class_name ^ ".SHIFT_SIGN;";
"    final long inte_masked = (x & " ^ class_name ^ ".MASK_INTEGRAL);";
"    final long inte = inte_masked >> " ^ class_name ^ ".SHIFT_INTEGRAL;";
"    final long frac_masked = x & " ^ class_name ^ ".MASK_FRACTIONAL;";
"    final double frac_float = " ^ class_name ^ ".EPSILON * frac_masked;";
"    return (sign == 0) ? inte + frac_float : 0.0 - (inte + frac_float);";
"  }";
"";
"  public " ^ class_name ^ "(";
"    final double input)";
"  {";
"    assert (input >= " ^ class_name ^ ".MIN_VALUE);";
"    assert (input <= " ^ class_name ^ ".MAX_VALUE);";
"    this.value = " ^ class_name ^ ".fromDouble(input);";
"  }";
"";
"  public double doubleValue()";
"  {";
"    return " ^ class_name ^ ".toDouble(this.value);";
"  }";
"}";
  ]

let build_java_unsigned (d : definition) (t : type_values) : string =
  let class_name = definition_java_class_name d       in
  let type_name  = string_of_type t.type_integer_type in
    String.concat "\n" [
"/* Automatically generated. DO NOT EDIT. */";
"package " ^ (d.definition_package) ^ ";";
"";
"/**";
" * Unsigned fixed-point serialization type using " ^ (Num.string_of_num d.definition_size_integral.size_value);
" * bits to store the integral part and " ^ (Num.string_of_num d.definition_size_fraction.size_value) ^ " bits ";
" * to store the fractional part.";
" */";
"";
"public final class " ^ class_name;
"{";
"  /** The total number of bits used to store the fixed point value. **/";
"  public static final long BITS_USED = " ^ (Num.string_of_num (definition_bits_required d)) ^ ";";
"  /** The number of bits used for the integral part of the fixed point value. **/";
"  public static final long BITS_INTEGRAL = " ^ (Num.string_of_num d.definition_size_integral.size_value) ^ ";";
"  /** The number of bits used for the fractional part of the fixed point value. **/";
"  public static final long BITS_FRACTIONAL = " ^ (Num.string_of_num d.definition_size_fraction.size_value) ^ ";";
"";
"  /** The bit mask used to extract the integral part of the fixed point value. **/";
"  public static final long MASK_INTEGRAL = " ^ (Hex_num.string_of_num_hex t.type_mask_integral) ^ "L;";
"  /** The bit mask used to extract the fractional part of the fixed point value. **/";
"  public static final long MASK_FRACTIONAL = " ^ (Hex_num.string_of_num_hex t.type_mask_fraction) ^ "L;";
"";
"  /** The number of bits the integral part is shifted in the fixed point value. **/";
"  public static final long SHIFT_INTEGRAL = " ^ (Num.string_of_num t.type_shift_integral) ^ ";";
"";
"  /** The smallest representable fractional value based on the number of bits available. **/";
"  public static final double EPSILON = " ^ (Num.approx_num_exp out_precision t.type_epsilon) ^ ";";
"";
"  /** The largest representable integral value based on the number of bits available. **/";
"  public static final long MAX_INTEGRAL = " ^ (Hex_num.string_of_num_hex t.type_max_integral) ^ "L;";
"  /** The largest representable fractional value based on the number of bits available. **/";
"  public static final double MAX_FRACTIONAL = " ^ (Num.approx_num_exp out_precision t.type_max_fractional) ^ ";";
"  /** The largest representable value based on the number of bits available. **/";
"  public static final double MAX_VALUE = " ^ (Num.approx_num_exp out_precision t.type_max_value) ^ ";";

"  /** The smallest representable integral value based on the number of bits available. **/";
"  public static final long MIN_INTEGRAL = " ^ (Hex_num.string_of_num_hex t.type_min_integral) ^ "L;";
"  /** The smallest representable fractional value based on the number of bits available. **/";
"  public static final double MIN_FRACTIONAL = " ^ (Num.approx_num_exp out_precision t.type_min_fractional) ^ ";";
"  /** The smallest representable value based on the number of bits available. **/";
"  public static final double MIN_VALUE = " ^ (Num.approx_num_exp out_precision t.type_min_value) ^ ";";
"";
"  public final " ^ type_name ^ " value;";
"";
"  /**";
"   * Encode the given double-precision value as a " ^ class_name ^ " value.";
"   * Note that only values in the range MIN_VALUE >= input <= MAX_VALUE can";
"   * be encoded correctly.";
"   */";
"";
"  public static " ^ type_name ^ " fromDouble(";
"    final double input)";
"  {";
"    final double abs_input = Math.abs (input);";
"    final long input_integral = (long) abs_input;";
"    final double input_fraction = abs_input - input_integral;";
"    final long inte = input_integral << " ^ class_name ^ ".SHIFT_INTEGRAL;";
"    final long mult = 1L << " ^ class_name ^ ".BITS_FRACTIONAL;";
"    final long frac = Math.round(mult * input_fraction);";
"    return " ^ (cast t.type_integer_type "inte | frac") ^ ";";
"  }";
"";
"  /**";
"   * Decode the given " ^ class_name ^ " value, returning a double-precision floating point value.";
"   * The resulting value will be in the range MIN_VALUE >= input <= MAX_VALUE.";
"   */";
"";
"  public static double toDouble(";
"    final " ^ type_name ^ " x)";
"  {";
"    final long inte_masked = x & " ^ class_name ^ ".MASK_INTEGRAL;";
"    final long inte = inte_masked >> " ^ class_name ^ ".SHIFT_INTEGRAL;";
"    final long frac_masked = x & " ^ class_name ^ ".MASK_FRACTIONAL;";
"    final double frac_float = " ^ class_name ^ ".EPSILON * frac_masked;";
"    return inte + frac_float;";
"  }";
"";
"  public " ^ class_name ^ "(";
"    final double input)";
"  {";
"    assert (input >= " ^ class_name ^ ".MIN_VALUE);";
"    assert (input <= " ^ class_name ^ ".MAX_VALUE);";
"    this.value = " ^ class_name ^ ".fromDouble(input);";
"  }";
"";
"  public double doubleValue()";
"  {";
"    return " ^ class_name ^ ".toDouble(this.value);";
"  }";
"}";
  ]

let write_java (d : definition) : unit =
  begin match check_definition d with
  | Some d ->
    begin match d.definition_signed with
    | Signed   -> print_endline (build_java_signed d (calculate_values d))
    | Unsigned -> print_endline (build_java_unsigned d (calculate_values d))
    end
  | None   -> fatal "invalid definition"
  end

let read_sign (s : string) : signed option =
  begin match s with
    | "signed"   -> Some Signed
    | "unsigned" -> Some Unsigned
    | _          -> None
  end

let read_size (s : string) : size option =
  try Some ({size_value = Num.num_of_string s}) with _ -> None

let main _ : unit =
  begin
    begin if Array.length Sys.argv < 5 then
      usage ()
    end;

    let package = Array.get Sys.argv 1 in
    let m_sign  = read_sign (Array.get Sys.argv 2) in
    let m_int   = read_size (Array.get Sys.argv 3) in
    let m_frac  = read_size (Array.get Sys.argv 4) in

    begin match (m_sign, m_int, m_frac) with
      | (Some sign, Some i, Some f) -> write_java ({
          definition_package       = package;
          definition_signed        = sign;
          definition_size_integral = i;
          definition_size_fraction = f
        })
      | (None, _,    _   ) -> begin error "could not parse sign"; usage () end
      | (_,    None, _   ) -> begin error "could not parse integral size"; usage () end
      | (_,    _,    None) -> begin error "could not parse fractional size"; usage () end
    end;
  end

let _ =
  try main () with Failure e -> (prerr_endline e; exit 1)
