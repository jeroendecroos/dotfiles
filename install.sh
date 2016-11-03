ln -sn ./vimrc ~/.vimrc
ln -sn ./tmux ~/.tmux.conf
ln -sn ./.tmux ~/.tmux

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/scrooloose/syntastic.git

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

sudo apt-get install libevent-dev libncurses-dev pkg-config
https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz -P /tmp/
cd /tmp
tar -xvf tmux-2.3.tar.gz
cd tmux-2.3
./configure && make
make install
tmux source-file ~/.tmux.conf
