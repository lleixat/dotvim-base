" Symbols:  » › • ☺ ∙ • ⭘ ★ ✪ ✰
let g:syntastic_error_symbol = '» '
let g:syntastic_style_error_symbol = '» '
let g:syntastic_warning_symbol = 'ω› '
let g:syntastic_style_warning_symbol = 'ω› '

" let g:syntastic_error_symbol = '⚉ '
" let g:syntastic_style_error_symbol = '⚈ '
" let g:syntastic_warning_symbol = '⚇ '
" let g:syntastic_style_warning_symbol = '⚆ '


let g:syntastic_python_checkers = ['pylint']
let g:syntastic_sh_shellcheck_args = "-e SC2029"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Define loc list height
" see :h syntastic-loclist-callback
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([(len(a:errors) + 1) , 10])
    endif
endfunction
