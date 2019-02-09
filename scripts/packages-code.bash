#!/usr/bin/env bash

# --------------------------------------------------------------
# Visual Studio Code.
# --------------------------------------------------------------

echo "Code> Installing…"

code --install-extension file-icons.file-icons
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension esbenp.prettier-vscode
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension pnp.polacode
code --install-extension formulahendry.auto-rename-tag
code --install-extension alefragnani.Bookmarks
code --install-extension dbaeumer.vscode-eslint

# code --install-extension Unity.unity-debug
# code --install-extension ms-vscode.csharp
# code --install-extension cmstead.jsrefactor
# code --install-extension eamodio.gitlens
# code --install-extension peterjausovec.vscode-docker

echo "Code> Done."
