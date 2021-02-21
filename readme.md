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

## Aliases
| Alias     | Command                        |
|-----------|--------------------------------|
| ccat      | `pygemtize -g`                 |
| dcb       | `docker-compose build`         |
| dcdn      | `docker-compose down`          |
| dce       | `docker-compose exec`          |
| dcl       | `docker-compose logs`          |
| dclf      | `docker-compose logs -f`       |
| dco       | `docker-compose`               |
| dcps      | `docker-compose ps`            |
| dcpull    | `docker-compose pull`          |
| dcpush    | `docker-compose push`          |
| dcr       | `docker-compose run`           |
| dcrestart | `docker-compose restart`       |
| dcrm      | `docker-compose rm`            |
| dcstart   | `docker-compose start`         |
| dcstop    | `docker-compose stop`          |
| dcup      | `docker-compose up`            |
| dcupd     | `docker-compose up -d`         |
| g         | `git`                          |
| v         | `nvim`                         |
| vrc       | `nvim ~/.config/nvim/init.vim` |
| vzrc      | `nvim ~/.zshrc`                |

## tmux
* New session: `tmux new -s session_name`
* List sessions: `tmux ls`
* Reattach: `tmux attach-session -t 0`

### tmux commands
`Ctrl+b` and:

* `c` create window
* `w` list windows
* `n` next window
* `p` previous window
* `f` find window
* `,`  name window
* `&`  kill window

* `d` detach
* `%` split horizontally
* `"` split vertically
* `o` next pane
* `;` toggle pane
* `x` close pane
* `r` reload tmux.conf

## VNC
### VNC Server
```bash
sudo apt install tigervnc-standalone-server tigervnc-xorg-extension
vncserver -SecurityTypes None
```

### VNC Client
```bash
sudo apt install tigervnc-viewer
ssh -L 5901:localhost:5901 hostnameofserverwithvnc
```

## Visual Studio Code Keybindings

* `ctrl+b` Toggle sidebar
* `ctrl+~` Toggle terminal

* `ctrl+shift+y` toggle panel maximize
* `f9` sort lines ascending
* `ctrl+shift+l` select line
* `ctrl+k` navigate up
* `ctrl+j` navigate down
* `ctrl+h` navigate left
* `ctrl+l` navigate right
