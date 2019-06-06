func! EmailListToJsonDict () range

	for linenum in range(a:firstline, a:lastline)
		let curr_line = getline(linenum)
        let patt = '^\(\s*\)\(\([a-z0-9]*\)\.\([a-z0-9]*\)\(\.[a-z0-9]*\)\?@.*\.com\)$'
		let tmpl = '\1{"name": "\U\4\e, \u\3\e", "email": "\2"},'
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


