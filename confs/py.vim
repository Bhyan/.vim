"Configuração para arquivos .py

set expandtab "Troca tab por espaços
set autoindent "Auto indentação
set ts=4 "Número de espaços com o tab
set shiftwidth=4 "Número de espaços no auto endentar
set softtabstop=4
set textwidth=79 "Quebra linha do texto
set wrap "Força quebra de linha 

" Configuração corretor ortográfico
set spell spelllang=pt "Corretor ortográfico
hi SpellBad ctermfg=Gray ctermbg=DarkRed

"Função que fecha automaticamente {([<
imap [ []<left>
imap { {}<left>
imap ( ()<left>
imap < <><left>
