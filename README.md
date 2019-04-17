# Jonas's dotfiles

My vim config grew too big, so I had to start version-ing them. I reviewed many `dotfiles` repos, but none of them were appealing to start with. Welcome to my `dotfiles`!

## Installation (Example)

Props to: [David Aurelio](https://github.com/davidaurelio/dotfiles)
```bash
mkdir -p projects
git clone --bare git@github.com:jonas-schulze/dotfiles.git $HOME/projects/.dotfiles
alias dotfiles='git --git-dir=$HOME/projects/dotfiles.git --work-tree=$HOME'
# dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```
