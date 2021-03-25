# dotfiles
Fitxers de configuració agrupats mitjançant GNU stow.

## Instal·lació

```BASH
sudo pacman -S git stow
mkdir -p ~/.dotfiles
git clone https://github.com/enricg/dotfiles.git

```
## Creació d'enllaços simbòlics de tots els directoris ( */ ) al directori dotfiles cap al directori $HOME

```BASH
cd ~/.dotfiles
stow -v -t ~ */

```

## Si s'afegeix un nou directori:
### refer enllaç (-R)

```BASH
cd ~/.dotfiles
stow -v -R -t ~ */

stow -v -R -t ~ nvim
```
## Si s'esborra un directori:
### esborrar (-D flag, i -R per reenllaçar)

```BASH
cd ~/.dotfiles
stow -v -D -t ~ */
stow -v -R -t ~ */
```
