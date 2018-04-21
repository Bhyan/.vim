" ======================== Configuração geral vimrc  ===========================

set encoding=utf-8 "Mapa de caracteres
set linebreak "Quebra a linha sem quebrar a palavra
set showmatch "Mostra caracteres ({[ quando fechados
set nu "Numeração de linhas
set hls "Grifa o resultado da busca
set expandtab "Troca tab por espaços
set ts=4 "Número de espaços com o tab
set softtabstop=4
set ic "Ignora case sensitive na busca
set incsearch "Procura texto em tempo real
set autoread "Recarrega o arquivo caso esteja aberto é seja editado por outro programa
set history=0 "Comandos salvos no histórico
set cursorline "Mostra linha atual mais clara
set background=dark
set nospell "Desabilita corretor ortográfico
hi SpellBad ctermfg=Gray ctermbg=DarkRed 

" ============================= Plugins =====================================

" Gerenciador de Plugins. Pathogen (https://github.com/tpope/vim-pathogen) 
execute pathogen#infect()
filetype plugin indent on

" NERDTree (https://github.com/scrooloose/nerdtree)
autocmd vimenter * NERDTree "Abrindo o plugin com o vim.
autocmd vimenter * wincmd p "Abre no arquivo de edição.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
" Finalizando o plugin com o vim (linha à cima).

" Tema do vim. (https://github.com/sickill/vim-monokai) 
syntax enable
colorscheme monokai
let g:airline_theme='simple'

" Auto completar(https://github.com/shougo/neocomplete.vim)
let g:neocomplete#enable_at_startup = 1 "Ativação completa do plugin.

" Barra inferior (https://github.com/vim-airline/vim-airline)
set laststatus=2 "Ativar ao abrir o editor.

" ========= Instalação powerline ============
" wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
" wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
" mv PowerlineSymbols.otf /usr/share/fonts/
" fc-cache -vf /usr/share/fonts/
" mv 10-powerline-symbols.conf /etc/fonts/conf.d/
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Indentline (https://github.com/yggdroot/indentline)
let g:indentLine_setColors = 0
let g:indentLine_char = '┆'

" Confguração Syntastic (https://github.com/vim-syntastic/syntastic)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configuração para formatos específicos.
augroup filetypedetect
  au BufNewFile,BufRead *.txt source ~/.vim/confs/txt.vim "Syntax para .txt
  au BufNewFile,BufRead *.html,*.css, *.php source ~/.vim/confs/html.vim "Syntax para .html, .css e .php
  au BufNewFile,BufRead *.py source ~/.vim/confs/py.vim "Syntax para .py
  au BufNewFile,BufRead *.cpp,*.c,*.h,*.hpp source ~/.vim/confs/cpp.vim "Syntax para .c, .cpp, .h e .hpp
  au BufNewFile,BufRead *.md,*.yml source ~/.vim/confs/md.vim "Syntax para .md e .yml
augroup END

" ========== Dobra ============
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
"Snippets de dobra.
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
"Salvar e carregar dobra e local do cursor.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
