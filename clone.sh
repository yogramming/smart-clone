#!/bin/bash
# Clone repo into structured ~/src/<provider>/<owner>/<repo>/ and open in editor

if [[ -z "$1" ]]; then
  echo "Usage: clone <git-url>"
  exit 1
fi

url="$1"

# -------- Determine Git Provider --------
if echo "$url" | grep -q "github.com"; then
  provider="github"
elif echo "$url" | grep -q "gitlab.com"; then
  provider="gitlab"
elif echo "$url" | grep -q "codeberg.org"; then
  provider="codeberg"
elif echo "$url" | grep -q "gitea"; then
  provider="gitea"
else
  provider="other"
fi

# -------- Extract owner/user and repo name --------

# Works for SSH: git@github.com:owner/repo.git
# Works for HTTPS: https://github.com/owner/repo.git

owner=$(echo "$url" | sed -E 's#(git@|https://)([^/:]+)[:/]([^/]+)/.*#\3#')
repo=$(basename "$url" .git)

# -------- Create the directory --------
target_dir="$HOME/src/$provider/$owner/$repo"

echo "Cloning into: $target_dir"

mkdir -p "$HOME/src/$provider/$owner"

git clone "$url" "$target_dir"

# -------- After success, open in editor --------
if [[ $? -eq 0 ]]; then
  cd "$target_dir" || exit
  echo "Opening repo in Neovim..."
  nvim .
else
  echo "Clone failed."
fi
