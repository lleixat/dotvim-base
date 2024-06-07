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


func! OnboardThis ()
    :cexpr system(g:portable . '/bin/sq_onboard.sh' . ' ' . shellescape(expand('%')))
endfunc

"
" Todo: Vim command that obfuscate :
"  - [ ] emails
"  - [ ] IP
"  - [ ] Current (v)select block?
"

"
" Auto enable paste mode on paste
"

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

let g:plug_file = g:portable . "/etc/plug.vim"
function PlugReload()
    exe "source ". g:plug_file
    PlugClean
    PlugInstall
    echom "Config reloaded."
endfunction

function! OpenInSplitIfBufferDirty(file)
    if line('$') == 1 && getline(1) == ''
        exec 'e' a:file
    else
        exec 'vsp' a:file
    endif
endfunction


let g:bootstrap_env_folder = $HOME . "/bootstrap"
" TODO: improve target detection (based on file type?)
function Push2Bootstrap()
    system('cp ' . expand('%:p') . g:bootstrap_env_folder)
    echom "(WIP) Pushed to " . g:bootstrap_env_folder
endfunction
