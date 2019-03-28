"Configuração para arquivos .c, .cpp, .h, .hpp, .py, .java, .js, .php

set expandtab "Troca tab por espaços
set autoindent "Auto endentação
set ts=4 "Número de espaços com o tab
set shiftwidth=4 "Número de espaços no auto endentar
set softtabstop=4
set textwidth=79 "Quebra linha do texto
set wrap "Força quebra de linha 

"Função que fecha automaticamente {([<"
inoremap " ""<left>
inoremap ' ''<left>
imap [ []<left>
imap { {}<left>
imap ( ()<left>
