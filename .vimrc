syntax enable
set mouse=
set background=dark
set number
set list
set listchars=tab:▸\
set expandtab
set tabstop=2
set shiftwidth=2
set statusline+=%F
color elflord
highlight ExtraSpaces ctermbg=red guibg=red
autocmd BufRead,BufNewFile * match ExtraSpaces /  \{2}/
autocmd TextChanged * :%s/\s\+$//e
