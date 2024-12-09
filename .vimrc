syntax enable 
set mouse=
set background=dark 
set number
set list
set listchars=tab:▸\ ,trail:· 
set expandtab 
set tabstop=2 
set shiftwidth=2
set paste 
set statusline+=%F
color elflord 
highlight ExtraSpaces ctermbg=DarkGrey guibg=DarkGrey 
autocmd BufRead,BufNewFile * match ExtraSpaces /\{1}/
