# 🚀 smart-clone

### A smarter, cleaner way to clone Git repositories — by yogramming

`smart-clone` is a tiny, fast, zero-dependency CLI tool that automatically organizes your Git repositories into a clean directory structure based on their **provider** and **owner**.

Clone any repo with one command:

clone https://github.com/neovim/neovim.git

Your repo will be placed inside:

~/src/github/neovim/neovim/

No more messy folders. No more manual moving.  
Just clean, predictable organization.

---

## ✨ Features

- 📁 Automatically organizes code into:

~/src/<provider>/<owner>/<repo>/

- 🧠 Auto-detects Git provider:
- GitHub
- GitLab
- Codeberg
- Gitea
- SSH + HTTPS supported

- ⚡ One command = clone + organize + open editor
- 🛠 Editor auto-start (defaults to Neovim)
- 🔧 Fully configurable
- 🎉 Zero dependencies — pure shell script

---

## 📦 Installation

### Using curl

curl -fsSL https://raw.githubusercontent.com/yogramming/smart-clone/main/install.sh

| bash

Ensure `~/.local/bin` is in your `PATH`.

---

## 🚀 Usage

clone <git-url>

Examples:

clone https://github.com/torvalds/linux.git

clone git@gitlab.com
:myorg/project.git
clone https://codeberg.org/user/tool.git

---

## 📂 Resulting directory structure

~/src/
github/
neovim/neovim/
torvalds/linux/
gitlab/
myorg/service-api/
codeberg/
user/tool/
other/
customdomain/project/

---

## 🛠 Configuration

Default editor is `nvim`.

Change editor:

export SMART_CLONE_EDITOR="code"
export SMART_CLONE_EDITOR="vim"
export SMART_CLONE_EDITOR="cursor"

---

## 🤝 Contributing

PRs are welcome — add providers, improve parsing, or add features.

---

## 📜 License

MIT License — see LICENSE file.
