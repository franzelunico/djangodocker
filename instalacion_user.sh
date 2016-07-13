cd ~
echo "source /etc/bash_completion.d/git" >>  ~/.bashrc 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/franzelunico/vim_configuracion.git
cd vim_configuracion
git checkout develop
cd ~
ln -s vim_configuracion/.vimrc .vimrc
ln -s vim_configuracion/.vimrc_plugins .vimrc_plugins
vim +PluginInstall +qall
echo "colorscheme gruvbox" >> vim_configuracion/.vimrc

git clone https://github.com/franzelunico/gitconf.git
cd gitconf
on_dir=$(pwd)
gitu="/.gitconfig"
union=$on_dir$gitu
echo $union
ln -s $union $HOME/.gitconfig

gitu="/.gitignore_global"
union=$on_dir$gitu
echo $union
ln -s $union $HOME/.gitignore_global
