# Configurations

### Installation (VIMRC)
1. Replace or modify your ~/.vimrc with the vimrc given in this repository
2. Run vim and the command ":BundleInstall" to install all plugins which takes some minutes
3. YouCompleteMe -one of the core components- needs to be compiled manually. Switch to ~/.vim/bundle/YouCompleteMe and run either ./install.sh --clang-completer  or ./install.sh --clang-completer --system-libclang if clang 3.7 or higher cannot be installed automatically by the install-script
4. (Optional) Modify the line ycm_global_ycm_extra_conf such that it points to your global ycm_extra_conf. An example can be found at https://gist.github.com/zhuzhenpeng/5939304c8f298c82352b
5. To use the "tagbar" plugin your vim needs to be compiled with ruby support (beside python-support)
6. 

### Notices (VIMRC)
0. Leader key is set to '\' (I am using US-American keyboard layout)
1. You can collapse and expand folds with <z-o> and <z-c> respectively
2. Ultisnips works fine with Youcompleteme plugin, expansion can be done with <C-Return>
3. Pressing "\ b" opens command-t plugin for file browsing (if vim is compiled with ruby)
4. Pressing <F3> opens Tagbar (only when ctags-exuberant is installed)
5. Pressing <F2> opens Directory tree
6. Pressing "\ w" offers a nice way to jump with the cursor to any place in the script
7. + and - key lets you change the width of a window
