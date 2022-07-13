" Vim filetype plugin
" Language: IEC 611131 textual
" Maintainer: Georgy Komarov <jubnzv@gmail.com>
" Latest Revision: 2020-03-21
if (exists('b:did_ftplugin'))
  finish
endif
let b:did_ftplugin = 1

setlocal formatoptions-=t

" Define comments string
setlocal comments=s1:(*,mb:*,ex:*),://
setlocal commentstring=(*%s*)

" Enable automatic comment insertion
setlocal formatoptions+=cro

setlocal tabstop=4 shiftwidth=4 expandtab

if exists('b:undo_ftplugin')
  let b:undo_ftplugin .= "|setl fo< fdm< com< cms< ts< sw< et<"
else
  let b:undo_ftplugin = "setl fo< fdm< com< cms< ts< sw< et<"
endif
