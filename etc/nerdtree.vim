"let g:NERDTreeIndicatorMapCustom = {
"            \ "Modified"  : "±",
"            \ "Staged"    : "+",
"            \ "Untracked" : "!",
"            \ "Renamed"   : "~",
"            \ "Unmerged"  : "═",
"            \ "Deleted"   : "×",
"            \ "Dirty"     : "✗",
"            \ "Clean"     : "✔︎",
"            \ "Ignored"   : "^",
"            \ "Unknown"   : "?"
"            \ }

let g:NERDTreeMinimalUI = 1
"let g:NERDTreeDirArrows = 1

"let g:NERDTreeDirArrowExpandable = "›"
"let g:NERDTreeDirArrowCollapsible = "-"
let g:NERDTreeDirArrowExpandable = ""
let g:NERDTreeDirArrowCollapsible = ""

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 0

let NERDTreeIgnore = ['\.pyc$','\~$','\.swp$']
