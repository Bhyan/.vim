" ================================== Configuração geral vim =====================================

set encoding=utf-8 " Mapa de caracteres.
set linebreak " Quebra a linha sem quebrar a palavra.
set showmatch " Mostra caracteres ({[< quando fechados.
set nu " Numeração de linhas.
set hls " Grifa o resultado da busca.
"set expandtab " Troca tab por espaços.
set ts=4 " Número de espaços com o tab.
set softtabstop=4
set ic " Ignora case sensitive na busca.
set incsearch " Procura texto em tempo real.
set autoread " Recarrega o arquivo caso esteja aberto é seja editado por outro programa.
set cursorline " Mostra linha atual mais clara.
set background=dark
set title " Mostra o nome do arquivo na janela.
syntax enable

" ============================================ Plugins ==============================================

" Gerenciador de Plugins. Pathogen (https://github.com/tpope/vim-pathogen) 
execute pathogen#infect()
filetype plugin indent on

" NERDTree (https://github.com/scrooloose/nerdtree)
autocmd vimenter * NERDTree "Abrindo o plugin com o vim.
autocmd vimenter * wincmd p "Abre no arquivo de edição.
"Finalizando o plugin com o vim.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
"Fechar plugin
noremap <F3> :NERDTreeToggle<CR>

" Tema do vim. (https://github.com/sickill/vim-monokai) 
colorscheme monokai

" Barra inferior (https://github.com/vim-airline/vim-airline)
set laststatus=2 "Ativar ao abrir o editor.
let g:airline_theme='simple' " Tema de cores
let g:airline#extensions#tabline#enabled = 1

" ========================================= Instalação powerline ====================================
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
" Use F6 para desativa syntastic do documento.
silent! nmap <F6> :SyntasticToggleMode<CR>

" Autocomplete neocomplete (https://github.com/Shougo/neocomplete.vim)
let g:neocomplete#enable_at_startup = 1
" <TAB> para autocomplete.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Configuração vim-gitgutter (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_max_signs = 500
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" ============================= Configuração para formatos de arquios ===============================

augroup filetypedetect
  au BufNewFile,BufRead *.html,*.css source ~/.vim/confs/html_css.vim " Syntax para .html, .css e .php
  "Syntax para linguagens de programação
  au BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp,*.py,*.java,*.js source ~/.vim/confs/prog_lang.vim 
  au BufNewFile,BufRead *.md,*.yml source ~/.vim/confs/md.vim " Syntax para .md e .yml
augroup END

" ========================================= Dicionario ==============================================

set spell spelllang=pt,en " Dicionario pt-br é en ativo por padrão.
" Cor grifada a palavra errada.
hi SpellBad ctermfg=Gray ctermbg=DarkRed 

" Mapeamento de caractere para ativar e desativar dicionario.
" Ctrl + F12 ativa, F12 desativa.
noremap <C-F12> :set spell spelllang=pt,en<CR>
noremap <F12> :set spell spelllang=<CR>

" ============================================== Dobra ==============================================

"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END
"Snippets de dobra.
"inoremap <F9> <C-O>za
"nnoremap <F9> za
"onoremap <F9> <C-C>za
"vnoremap <F9> zf
"Salvar e carregar dobra e local do cursor.
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview
