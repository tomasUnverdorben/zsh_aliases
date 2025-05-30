# 🐚 ZSH Aliases by Tomáš Unverdorben

Welcome to my curated collection of `zsh` aliases! These are time-saving shell shortcuts that I use daily in WSL (Windows Subsystem for Linux) and Unix-like environments to speed up Git workflows, file navigation, and command-line efficiency.

---

## ⚙️ Getting Started

1. **Clone the repository:**

```bash
git clone https://github.com/tomasUnverdorben/zsh_aliases.git ~/.zsh_aliases
```

2. **Source it from your `.zshrc`:**

Add this line at the end of your `~/.zshrc`:

```zsh
source ~/.zsh_aliases/aliases.zsh
```

3. **Apply the changes:**

```bash
source ~/.zshrc
```

---

## 📁 Structure

- `aliases.zsh` – Main alias definitions for Git, navigation, Kubernetes, WSL path shortcuts, and more.
- Future files may modularize aliases (e.g., `git.zsh`, `kube.zsh`, `wsl.zsh`) for better organization.

---

## 🧠 Highlights

### 🔧 Git Shortcuts

```zsh
glog     # Fancy git log
gco      # Git checkout
gcm      # Git commit -m
gst      # Git status
```

### 📂 WSL Path Shortcuts

Avoid hardcoding Windows usernames — these aliases use dynamic path resolution:

```zsh
# Go to Windows Downloads folder
alias cdd='cd "$(wslpath "$USERPROFILE\\Downloads")"'
```

Make sure to define this environment variable dynamically:

```zsh
export USERPROFILE='C:\\Users\\'"$USER"
```

---

## 💡 Tip: Extend Further

Want per-project aliases or environment-specific tools? Just add more files and source them in your `.zshrc`:

```zsh
source ~/.zsh_aliases/git.zsh
source ~/.zsh_aliases/k8s.zsh
```

---

## 🧊 License

MIT — use freely, modify boldly.

---

## 🤝 Contributions

Feel free to open an issue or pull request if you have a useful alias idea or improvement. Or fork it and make it your own!

---

Happy shelling! 🐚
