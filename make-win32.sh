#!/bin/sh -ex

ocamlopt -cclib '-L c:\mingw\lib' -c nums.cmxa hex_num.mli
ocamlopt -cclib '-L c:\mingw\lib' -c nums.cmxa hex_num.ml
ocamlopt -cclib '-L c:\mingw\lib' -o fppg nums.cmxa hex_num.cmx fppg.ml

