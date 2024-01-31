#!/bin/bash
DOTFILES_DIRECTORY=$HOME/dotfiles

DOTFILES=(
	"kitty"
	"nvim"
	".zshrc"
	".zsh_secrets"
)

for dotfile in "${DOTFILES[@]}"; do
	if [ ! -e "${DOTFILES_DIRECTORY}/${dotfile}" ]; then
		echo "Warning: File '${DOTFILES_DIRECTORY}/${dotfile}' does not exist"
		continue
	fi

	rm -rf "${HOME}/${dotfile:?}"
	ln -s "${DOTFILES_DIRECTORY}/${dotfile}" "${HOME}/${dotfile}"
done
