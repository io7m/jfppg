signed k   = filter (\(integral,fractional) -> integral + fractional == k - 1) [(integral,fractional) | integral <- [1 .. k], fractional <- [1 .. k]]
unsigned k = filter (\(integral,fractional) -> integral + fractional == k)     [(integral,fractional) | integral <- [1 .. k], fractional <- [1 .. k]]

line s s' (integral, fractional) =
  let is = show integral
      fs = show fractional
      cs = class_name s' integral fractional
  in concat [
    "./fppg com.io7m.fppg ", s," ", is," ", fs," > src/com/io7m/fppg/", cs, ".java\n",
    "./fppg-test.sh ", cs, " > src/com/io7m/fppg/", cs, "Test.java"
    ]

class_name s integral fractional = concat ["FixedI", show integral, "F", show fractional, s]

signed_line = line "signed" "Signed"
unsigned_line = line "unsigned" "Unsigned"

out n =
  putStrLn "#------------------------------------------------------------------------" >>
  putStrLn ("# signed " ++ (show n)) >>
  putStrLn "" >>
  mapM_ (putStrLn . signed_line) (signed n) >>
  putStrLn "" >>
  putStrLn "#------------------------------------------------------------------------" >>
  putStrLn ("# unsigned " ++ (show n)) >>
  putStrLn "" >>
  mapM_ (putStrLn . unsigned_line) (unsigned n) >>
  putStrLn ""

main =
  putStrLn "#!/bin/sh -ex" >>
  putStrLn "# Auto generated. DO NOT EDIT." >>
  putStrLn "">>
  putStrLn "rm -rf src" >>
  putStrLn "mkdir src" >>
  putStrLn "mkdir src/com" >>
  putStrLn "mkdir src/com/io7m" >>
  putStrLn "mkdir src/com/io7m/fppg" >>
  putStrLn "cp ApproximatelyEqualDouble.java src/com/io7m/fppg" >>
  putStrLn "cp ApproximatelyEqualDoubleTest.java src/com/io7m/fppg" >>
  putStrLn "" >>
  out 8 >>
  out 16 >>
  out 24 >>
  out 32 >>
  out 40 >>
  out 48

