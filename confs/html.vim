"Configuração para arquivos .html

set expandtab "Troca tab por espaços
set autoindent "Auto indentação
set ts=2 "Número de espaços com o tab
set shiftwidth=2 "Número de espaços no autoindent
set softtabstop=2
set textwidth=100 "Quebra linha do texto
set wrap "Força quebra de linha 

" Configuração corretor ortográfico
set spell spelllang=pt "Corretor ortográfico
hi SpellBad ctermfg=Gray ctermbg=DarkRed

"Função que fecha automaticamente {([
imap { {}<left>
"imap ( ()<left>
"imap < <><left>

"Emmet-vim (https://github.com/mattn/emmet-vim/)
function! s:zen_html_tab()
    return "\<c-y>,"
endfunction
imap <buffer><expr><F2> <sid>zen_html_tab()
imap <buffer><expr><F2> <sid>zen_html_tab()
