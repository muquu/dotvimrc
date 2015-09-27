Setup
==========
Clone repository
--------------------
::

  $ git clone https://github.com/muquu/dotfiles.git ~/dotvimrc

Create symbolic link
-------------------------

Windows
============
Administrator Power Shell ::

  PS > cd %HOME%
  PS > cmd /c mklink .vimrc "C:\Users\<user_name>\dotvimrc\vimrc"
  PS > cmd /c mklink .gvimrc "C:\Users\<user_name>\dotvimrc\gvimrc"

Download `Kaoriya vim <http://www.kaoriya.net/software/vim/>`_

Linux or Other
===================
::

  $ ln -s $HOME/dotvimrc/vimrc $HOME/.vimrc

NeoBundle
--------------
::

   $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

Launch vim and run ``:NeoBundleInstall``
