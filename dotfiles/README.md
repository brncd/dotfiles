# My dotfiles

#### Using git bare

Follow the explanation in [this video](https://www.youtube.com/watch?v=tBoLDpTWVOM).

`git init --bare $HOME/dotfiles`

`alias $dotconfig$='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`

`bash`

`dotconfig config --local status.showUntrackedFiles no`

Basic usage example:

`dotconfig add /path/to/file`

`dotconfig commit -m "commit message"`

`dotconfig push`
