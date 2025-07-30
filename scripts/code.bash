#!/usr/bin/env bash

# --------------------------------------------------------------
# Visual Studio Code.
# --------------------------------------------------------------

# Before installign the packages below, you need to install the `code` bin.
# In VSCode, open the command palette and run "Shell Command: Install 'code' command in PATH"

echo "Code> Installing…"

# Basics.
code --install-extension formulahendry.auto-rename-tag # Still necessary despite VSCode own implementation
code --install-extension dbaeumer.vscode-eslint
code --install-extension tamasfe.even-better-toml
code --install-extension file-icons.file-icons
code --install-extension bmalehorn.vscode-fish
code --install-extension waderyan.gitblame
code --install-extension github.github-vscode-theme
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension dbankier.vscode-quick-select
code --install-extension sapegin.reveal-in-ghostty
code --install-extension timonwong.shellcheck

# Copilot
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat

# Python:
code --install-extension charliermarsh.ruff
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.debugpy
# code --install-extension njpwerner.autodocstring
# code --install-extension KevinRose.vsc-python-indent

# Laravel / PHP:
# code --install-extension bmewburn.vscode-intelephense-client
# code --install-extension laravel.vscode-laravel
# code --install-extension shufo.vscode-blade-formatter

# Style-components:
# code --install-extension styled-components.vscode-styled-components

# Tailwind:
# code --install-extension bradlc.vscode-tailwindcss

# Deno:
# code --install-extension denoland.vscode-deno

echo "Code> Done."

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------

# Useful in case:
# code --install-extension adpyke.codesnap

# Deprecated:
# code --install-extension CoenraadS.bracket-pair-colorizer

# Not used anymore:
# code --install-extension Unity.unity-debug
# code --install-extension ms-vscode.csharp
# code --install-extension cmstead.jsrefactor
# code --install-extension alefragnani.Bookmarks
# code --install-extension peterjausovec.vscode-docker
