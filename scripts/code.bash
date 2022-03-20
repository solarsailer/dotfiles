#!/usr/bin/env bash

# --------------------------------------------------------------
# Visual Studio Code.
# --------------------------------------------------------------

# Before installign the packages below, you need to install the `code` bin.
# In VSCode, open the command palette and run "Shell Command: Install 'code' command in PATH"

echo "Code> Installing…"

code --install-extension formulahendry.auto-rename-tag # Still necessary despite VSCode own implementation
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension dbaeumer.vscode-eslint
code --install-extension file-icons.file-icons
code --install-extension bmalehorn.vscode-fish
code --install-extension pnp.polacode
code --install-extension esbenp.prettier-vscode
code --install-extension jpoissonnier.vscode-styled-components

echo "Code> Done."

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------

# code --install-extension Unity.unity-debug
# code --install-extension ms-vscode.csharp
# code --install-extension cmstead.jsrefactor
# code --install-extension eamodio.gitlens
# code --install-extension alefragnani.Bookmarks
# code --install-extension peterjausovec.vscode-docker