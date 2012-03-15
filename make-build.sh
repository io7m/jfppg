#!/bin/sh -ex

OCAMLOPT_FLAGS="-w @a-4-27-28 -principal -strict-sequence -annot"

ocamlopt ${OCAMLOPT_FLAGS} -c nums.cmxa hex_num.mli
ocamlopt ${OCAMLOPT_FLAGS} -c nums.cmxa hex_num.ml
ocamlopt ${OCAMLOPT_FLAGS} -o fppg nums.cmxa hex_num.cmx fppg.ml

