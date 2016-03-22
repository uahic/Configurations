# Configurations

### Installation (VIMRC)
1. Replace or modify your ~/.vimrc with the vimrc given in this repository
2. Run vim and the command ":BundleInstall" to install all plugins which takes some minutes
3. YouCompleteMe -one of the core components- needs to be compiled manually. Switch to ~/.vim/bundle/YouCompleteMe and run either ./install.sh --clang-completer  or ./install.sh --clang-completer --system-libclang if clang 3.7 or higher cannot be installed automatically by the install-script
4. To use the "tagbar" plugin your vim needs to be compiled with ruby support (beside python-support)
