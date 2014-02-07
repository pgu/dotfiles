execute pathogen#infect()

syntax on
filetype indent plugin on

" vim-colors-solarized
" let g:solarized_termcolors=256
" syntax enable
" set background=dark
" colorscheme solarized
colorscheme monokai

" go fmt
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" golint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" Vim-compiler-go
let g:golang_goroot = "/home/pascal/bin/golang/go"

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
autocmd vimenter * NERDTree
" autocmd vimenter *  if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nmap <F4> :NERDTreeToggle<CR>
" Go to previous window
autocmd vimenter * wincmd p

" cursor centered
:nnoremap j jzz
:nnoremap k kzz

" Gundo
:nnoremap <F5> :GundoToggle<CR>

" tags for go, cf gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

