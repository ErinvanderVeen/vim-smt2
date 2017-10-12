" SMT2 syntax file
" Language:     SMT2
" Author:       Erin van der Veen
" License:      This file is placed in the public domain
" Version:      SMT2.6

if exists("b:current_syntax")
  finish
endif

syn keyword smt2Command
			\assert
			\check-sat
			\check-sat-assuming
			\declare-const
			\declare-datatype
			\declare-datatypes
			\declare-fun
			\declare-sort
			\define-fun
			\define-fun-rec
			\define-funs-rec
			\define-sort
			\echo
			\exit
			\get-assertions
			\get-assignment
			\get-info
			\get-model
			\get-option
			\get-proof
			\get-unsat-assumptions
			\get-unsat-core
			\get-value
			\pop
			\push
			\reset
			\reset-assertions
			\set-info
			\set-logic
			\set-option

syn keyword smt2Sort Bool Int Real Nat Array Set
syn keyword smt2Bool false true
syn keyword smt2Operator
			\xor
			\or
			\and
			\=>
			\distinct
			\select
			\store
			\emptySet
			\univSet
			\singleton
			\union
			\inters
			\in
			\subset
			\-
			\+
			\*
			\<=
			\<
			\>=
			\>

syn match smt2Option ":([a-zA-Z-])+"
syn match smt2Comment ";.*$"


let b:current_syntax = "smt2"

hi def link smt2Command             Statement
hi def link smt2Sort                Type
hi def link smt2Bool                Boolean
hi def link smt2Operator            Operator
hi def link smt2Comment             Comment
