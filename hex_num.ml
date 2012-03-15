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

let as_hex (n : Num.num) : char =
  begin match n with
  | Num.Int x ->
    begin match x with
    | 0  -> '0'
    | 1  -> '1'
    | 2  -> '2'
    | 3  -> '3'
    | 4  -> '4'
    | 5  -> '5'
    | 6  -> '6'
    | 7  -> '7'
    | 8  -> '8'
    | 9  -> '9'
    | 10 -> 'a'
    | 11 -> 'b'
    | 12 -> 'c'
    | 13 -> 'd'
    | 14 -> 'e'
    | 15 -> 'f'
    | _  -> assert false
    end
  | _ -> assert false
  end

let n0  = Num.Int 0
let n16 = Num.Int 16

let rec list_flatten (c : char list) (b : Buffer.t) : string =
  begin match c with
  | []      -> Buffer.contents b
  | x :: xs -> (Buffer.add_char b x; list_flatten xs b)
  end

let rec string_of_num_hex_aux (n : Num.num) (c : char list) : string =
  let cm = Num.mod_num n n16 in
    if Num.gt_num n n0 == false then
      "0x" ^ (list_flatten c (Buffer.create 16))
    else
      string_of_num_hex_aux (Num.quo_num n n16) (as_hex cm :: c)

let string_of_num_hex (n : Num.num) : string =
  if Num.eq_num n n0 then
    "0x0"
  else
    if Num.ge_num n n0 then
      string_of_num_hex_aux n []
    else
      "-" ^ (string_of_num_hex_aux (Num.abs_num n) [])

