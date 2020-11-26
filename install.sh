sudo apt install python-pip
sudo apt install python3-pip
sudo apt-get install curl
sudo apt-get install vim

chmod u+x $PWD/bin/tmux-session
ln -sn $PWD/ ~/dotfiles
ln -sn ~/dotfiles/vimrc ~/.vimrc
ln -sn ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sn ~/dotfiles/tmux_dir ~/.tmux
ln -sn ~/dotfiles/bashrc_basic ~/.bashrc_basic
echo "source  ~/.bashrc_basic" >> ~/.bashrc

sudo apt 

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/scrooloose/syntastic.git

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

sudo apt-get install libevent-dev libncurses-dev pkg-config
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz -P /tmp/
cd /tmp
tar -xvf tmux-2.3.tar.gz
cd tmux-2.3
./configure && make
make install
tmux source-file ~/.tmux.conf
rm /tmp/tmux-2.3.tar.gz
