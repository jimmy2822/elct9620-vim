Aotoki's VIM
===

This a vim configuration for myself.
I fork [eddie-vim](https://github.com/kaochenlong/eddie-vim) and use it several months.

But I still hope have a own vim configuration, so I reference [eddie-vim](https://github.com/kaochenlong/eddie-vim) settings, and create a my own version.
Now, it is very similar [eddie-vim](https://github.com/kaochenlong/eddie-vim) but I will try to customize it more for my coding work.

Requirements
---

* ctags

Install
---

1. Move to your home directory `cd ~`
2. Clone my vim settings `git clone https://github.com/elct9620/elct9620-vim.git`
3. Link directory `ln -s elct9620-vim .vim`
4. Link vimrc file `ln -s .vim/vimrc .vimrc`
5. Install vundle `cd .vim && ./update.sh`
6. Install relative bundle `vim +BundleInstall +qall`
7. Everything is find, free to use it

Usage
---

* `F2` - Open NERDTree
* `F5` - Reload file
* `F6` - Open Taglist
* `F7` - Prveious Tab
* `F8` - Next Tab
