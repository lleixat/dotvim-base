func! EmailListToJsonDict () range

	for linenum in range(a:firstline, a:lastline)
		let curr_line = getline(linenum)
        let patt = '^\(\s*\)\(\([-a-z0-9]*\)\.\([-a-z0-9]*\)\(\.[-a-z0-9]*\)\?@.*\.com\)\([;,\s*]*\)\([a-zA-Z0-9]*\)$'
		let tmpl = '\1{"name": "\U\4\E, \L\3\E", "email": "\2", "id": "\L\7\E"},'
        call setline(linenum, substitute(curr_line, patt, tmpl, "g"))
    endfor

    " Reindent
    silent! a:firstline . "=" . a:lastline
	"Report what was done...
    if a:lastline > a:firstline
        echom "Formated:" (a:lastline - a:firstline + 1) "lines"
    endif
endfunc
command! -range OnboardingFormatEmailList <line1>,<line2>call EmailListToJsonDict()


func! OnboardThis ()
    :cexpr system(g:portable . '/bin/sq_onboard.sh' . ' ' . shellescape(expand('%')))
endfunc

command! OnboardThis :call OnboardThis()


"
" Auto enable paste mode on paste
"
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
