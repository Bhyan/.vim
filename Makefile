GIT = git clone
GET = wget
BUNDLE = ./bundle/
COLORS = ./colors/

all: \
	bundle \
	git\
	mov

bundle:
	mkdir $(BUNDLE)
	mkdir $(COLORS)

git:
	$(GIT) https://github.com/scrooloose/nerdtree.git/ $(BUNDLE)nerdtree
	$(GIT) https://github.com/sickill/vim-monokai.git $(COLORS)vim-monokai
	$(GIT) https://github.com/vim-airline/vim-airline.git $(BUNDLE)vim-airline
	$(GIT) https://github.com/Yggdroot/indentLine.git $(BUNDLE)indentLine
	$(GIT) https://github.com/vim-syntastic/syntastic.git $(BUNDLE)syntastic
	$(GIT) https://github.com/Shougo/neocomplete.vim.git $(BUNDLE)neocomplete.vim
	$(GIT) https://github.com/mattn/emmet-vim.git $(BUNDLE)emmet-vim
	$(GIT) https://github.com/airblade/vim-gitgutter.git $(BUNDLE)vim-gitgutter

mov:
	cp vimrc ~/.vimrc
	mv colors/vim-monokai/colors/monokai.vim colors/
	rm -rf colors/vim-monokai

clean:
	rm -rf $(BUNDLE)
	rm -rf $(COLORS)
