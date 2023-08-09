### Setup computer

## Reference
- https://open.nytimes.com/set-up-your-mac-like-an-interactive-news-developer-bb8d2c4097e5
- https://sourabhbajaj.com/mac-setup/

## Install with App Store or download
- [ ] Xcode
- [ ] ITerm
- [ ] Firefox
- [ ] Magnet

## Configure manually

1. Setup command line tools

`xcode-select --install`

2. Homebrew

```
export HOMEBREW_NO_INSTALL_FROM_API=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

3. Setup git
Install gh for git to do command line stuff

```
brew install gh
gh auth login
```

Follow the prompts to connect gh

4. Setup oh my zsh
   
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

6. Setup tools 
Tree - will show the tree structure of directory

`brew install tree`

Fzf does fuzzy search

`brew install fzf`

Ack - the search tool for code

`brew install ack`

6. Install vim

`brew install vim`

Install Vundle for plugin management

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Add one dark color to correct directories after opening vim and running PluginInstall

Install the theme using your Vim plug-in manager of choice (or manually, by placing colors/onedark.vim in your ~/.vim/colors/ directory and autoload/onedark.vim in your ~/.vim/autoload/ directory.)

7. Install Tmux

`brew install Tmux`

8. Install asdf for software management

```
brew install coreutils curl git
brew install asdf
```

9. Install docker

`brew install docker docker-compose`

