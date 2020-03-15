" Vim syntax file
" Language: Structured Text
" Maintainer: Georgy Komarov <jubnzv@gmail.com>
" Latest Revision: 23 May 2018

if exists("b:current_syntax")
  finish
endif

" Import common IEC 61131-3 syntax rules
runtime! syntax/iec_textual.vim

" ST syntax is case-insenstitive
syntax case ignore

" {{{ Structured Text expressions [see: 3.3]
" ST operators [see: table 55]
syn keyword STOperator NOT MOD AND XOR OR
" ST statements [see: 3.3.2, table 56]
syn keyword STConditional IF ELSIF ELSE END_IF CASE END_CASE THEN TO
syn keyword STRepeat FOR WHILE REPEAT END_FOR END_WHILE END_REPEAT BY DO DO UNTIL
syn keyword STStatement EXIT CONTINUE RETURN
" }}}

" {{{ Highlighting
hi link STOperator              Statement
hi link STConditional           Conditional
hi link STRepeat                Repeat
hi link STStatement             Statement
" }}}1

let b:current_syntax = "st"

" vim: foldmethod=marker sw=2
