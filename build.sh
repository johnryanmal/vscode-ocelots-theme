#!/bin/sh
cd "$(dirname "$0")"

vsce package
local file="$(find . -name "vscode-ocelots-theme-*.vsix" | head -n 1)"
if [ -e "$file" ]; then
	code --uninstall-extension "$file"
	code --install-extension "$file"
fi