# VIM

* `u` undo last change

## Configuration

## Setup
For various python tools.
```bash
sudo apt install python3-venv python3-dev
```

### YouCompleteMe
See [yvm-core/YouCompleteMe](https://github.com/ycm-core/YouCompleteMe#linux-64-bit).

```bash
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --rust-completer --clang-completer 
```

### Spellcheck
```
:set spell spelllang=en_ca
:set spellfile=~/.vim/spell/en.utf-8.add
```

* `z=` alternative spelling
* `zg` add to dictionary
* `zw` mark incorrect

Temporarily disable:
```
:set nospell
```

## Plugins
[vim-plug](https://github.com/junegunn/vim-plug)

## Autoformat
[black](https://github.com/psf/black) for python


## Pasting
```
:set paste
:set nopaste
```

