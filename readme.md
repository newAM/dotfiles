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

## Aliases
| Alias     | Command                  |
|-----------|--------------------------|
| ccat      | `pygemtize -g`           |
| dcb       | `docker-compose build`   |
| dcdn      | `docker-compose down`    |
| dce       | `docker-compose exec`    |
| dcl       | `docker-compose logs`    |
| dclf      | `docker-compose logs -f` |
| dco       | `docker-compose`         |
| dcps      | `docker-compose ps`      |
| dcpull    | `docker-compose pull`    |
| dcr       | `docker-compose run`     |
| dcrestart | `docker-compose restart` |
| dcrm      | `docker-compose rm`      |
| dcstart   | `docker-compose start`   |
| dcstop    | `docker-compose stop`    |
| dcup      | `docker-compose up`      |
| dcupd     | `docker-compose up -d`   |
| v         | `nvim`                   |

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
* `r` reload tmux.conf
