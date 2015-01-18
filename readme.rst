Setup
==========
Clone repository
--------------------
::

  $ git clone git://github.com/muquu/dotfiles.git ~/dotfiles

Create symbolic link
-------------------------

Windows
============
Administrator Power Shell ::

  PS > cd %HOME%
  PS > cmd /c mklink _vimrc "C:\path\to\dotfiles\.vimrc"
  PS > cmd /c mklink _gvimrc "C:\path\to\dotfiles\.gvimrc"

Download `Kaoriya vim <http://www.kaoriya.net/software/vim/>`_

Linux or Other
===================
CUI ::

  $ ./setup.sh

Xorg ::

  $ ./setup_xorg.sh

Vundle
----------
::

   $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Launch vim and run ``:PluginInstall``
