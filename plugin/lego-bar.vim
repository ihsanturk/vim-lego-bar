hi User1 ctermfg=11 ctermbg=237 cterm=none guifg=#FABD2F guibg=#3A3A3A gui=none
hi User2 ctermfg=3  ctermbg=238 cterm=none guifg=#D49721 guibg=#444444 gui=none
hi User3 ctermfg=9  ctermbg=236 cterm=bold guifg=#F84833 guibg=#303030 gui=none
hi User4 ctermfg=6  ctermbg=237 cterm=bold guifg=#689D6A guibg=#3A3A3A gui=bold
hi User5 ctermfg=7  ctermbg=239 cterm=none guifg=#A89984 guibg=#4E4E4E gui=none
hi User6 ctermfg=11 ctermbg=237 cterm=none guifg=#FABD2F guibg=#3A3A3A gui=bold

set statusline=
set statusline+=%1*\ %{TotalBufferNumber()}b "1 BufferNumber
set statusline+=\ %0*\ %f "0 FilePath
set statusline+=\ %3*%m%r%w%0*%= "3 ReadOnly?
set statusline+=\ %4*\ %y "4 FileType
set statusline+=\ %6*%{strftime('%-d\ %b\ %-H:%M')}\  "6 Time

hi StatusLineTerm ctermfg=233 ctermbg=14
hi StatusLineTermNC ctermfg=240 ctermbg=236 term=none  
hi StatusLineNC gui=none guifg=#585858 guibg=#303030 ctermfg=240 ctermbg=236
hi StatusLine gui=bold guifg=#689D6A guibg=#303030 ctermfg=14 ctermbg=234 cterm=bold

func! TotalBufferNumber()
	return len(getbufinfo({'buflisted':1}))
endf

