"~/.config/nvim/init.vim

:set splitright
:set splitbelow
:set nu rnu

:map Y y$

"exit incert mode in terminal
:tnoremap <Esc> <C-\><C-n> 

"PYTHON	MAPPINGS
autocmd FileType python map <buffer> <F4> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F4> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:tabedit %<CR>:let $FILENAME = @%<CR>:terminal<CR>ipython $FILENAME<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:tabedit %<CR>:let $FILENAME = @%<CR>:terminal<CR>ipython $FILENAME<CR>
