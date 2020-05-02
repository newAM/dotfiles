# dotfiles
Taken from this hacker news comment: [link](https://news.ycombinator.com/item?id=11070797)

## Setup
```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
cofig remote add origin git@github.com:newAM/dotfiles.git
```

## Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/newAM/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

## Configuration
```bash
config config status.showUntrackedFiles no
config remote set-url origin git@github.com:newAM/dotfiles.git
```

## Usage
```bash
config status
config add .gitconfig
config commit -m "Added a thing."
config push
```

## Cheatsheet

### tmux
* New session: `tmux new -s session_name`
* List sessions: `tmux ls`
* Reattach: `tmux attach-session -t 0`

#### tmux commands
`Ctrl+b` and:

* `c` new window
* `w` choose window from list
* `0` switch to windows 0
* `,` rename current window
* `d` detach
* `%` split horizontally
* `"` split vertically
* `o` next pane
* `;` toggle pane
* `x` close pane

### tmux copy paste

(if using vim)
```
:set nu!
:set nu
:set paste
:set nopaste
```

`Ctrl+b` and `[`
`Ctrl+space`
Arrow keys make selection
`Ctrl+w`
`Ctrl+b` and `]`
