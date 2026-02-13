# Terminal Cheatsheet

> Complete reference for terminal commands covered in Lesson 1

---

## 🧭 Navigation

| Command     | Description                                    | Example                       |
| ----------- | ---------------------------------------------- | ----------------------------- |
| `pwd`       | Print current directory path                   | `pwd` → `/Users/you/projects` |
| `cd <path>` | Change directory                               | `cd ~/Desktop`                |
| `cd ..`     | Go one level up                                | `cd ..`                       |
| `cd -`      | Go to previous directory                       | `cd -`                        |
| `cd ~`      | Go to home directory                           | `cd ~`                        |
| `ls`        | List files and directories                     | `ls`                          |
| `ls -la`    | List all files (including hidden) with details | `ls -la`                      |
| `ls -lh`    | List with human-readable file sizes            | `ls -lh`                      |

### 💡 Tips

- `~` = your home directory (`/Users/yourname` on macOS)
- `.` = current directory
- `..` = parent directory
- Hidden files start with a dot (`.bashrc`, `.gitignore`)
- Press **Tab** to autocomplete file/directory names
- Press **↑ / ↓** to navigate command history

---

## 📁 File & Directory Operations

### Creating

| Command           | Description               | Example                  |
| ----------------- | ------------------------- | ------------------------ |
| `touch <file>`    | Create an empty file      | `touch index.js`         |
| `mkdir <dir>`     | Create a directory        | `mkdir tests`            |
| `mkdir -p <path>` | Create nested directories | `mkdir -p src/tests/e2e` |

### Copying, Moving, Renaming

| Command              | Description                  | Example                             |
| -------------------- | ---------------------------- | ----------------------------------- |
| `cp <src> <dest>`    | Copy a file                  | `cp config.json config.backup.json` |
| `cp -r <src> <dest>` | Copy a directory recursively | `cp -r tests/ tests-backup/`        |
| `mv <src> <dest>`    | Move or rename a file/dir    | `mv old.js new.js`                  |

### Deleting

| Command        | Description                    | Example               |
| -------------- | ------------------------------ | --------------------- |
| `rm <file>`    | Delete a file                  | `rm temp.log`         |
| `rm -r <dir>`  | Delete a directory recursively | `rm -r node_modules/` |
| `rm -rf <dir>` | Force delete (no confirmation) | `rm -rf dist/`        |

> ⚠️ **Warning**: `rm -rf` is **irreversible**. There is no trash bin. Double-check your path before running it!

---

## 📄 Viewing File Contents

| Command             | Description                                | Example              |
| ------------------- | ------------------------------------------ | -------------------- |
| `cat <file>`        | Print entire file contents                 | `cat package.json`   |
| `head <file>`       | Show first 10 lines                        | `head README.md`     |
| `head -n 20 <file>` | Show first 20 lines                        | `head -n 20 app.log` |
| `tail <file>`       | Show last 10 lines                         | `tail app.log`       |
| `tail -f <file>`    | Follow file in real-time (great for logs)  | `tail -f server.log` |
| `less <file>`       | Scrollable file viewer (press `q` to quit) | `less big-file.txt`  |
| `wc -l <file>`      | Count lines in a file                      | `wc -l test.spec.ts` |

---

## 🔍 Search

| Command                           | Description                          | Example                        |
| --------------------------------- | ------------------------------------ | ------------------------------ |
| `find <dir> -name <pattern>`      | Find files by name                   | `find . -name "*.spec.ts"`     |
| `find <dir> -type d -name <name>` | Find directories by name             | `find . -type d -name "tests"` |
| `grep <pattern> <file>`           | Search for text in a file            | `grep "error" app.log`         |
| `grep -r <pattern> <dir>`         | Search text recursively in directory | `grep -r "TODO" src/`          |
| `grep -rn <pattern> <dir>`        | Search with line numbers             | `grep -rn "describe(" tests/`  |
| `grep -i <pattern> <file>`        | Case-insensitive search              | `grep -i "warning" app.log`    |
| `which <command>`                 | Show path to a command               | `which node`                   |

---

## 🔗 Pipes and Redirects

Pipes (`|`) send the output of one command as input to another. Redirects (`>`, `>>`) send output to a file.

| Syntax                 | Description                      | Example                                |
| ---------------------- | -------------------------------- | -------------------------------------- |
| `cmd1 \| cmd2`         | Pipe output of cmd1 to cmd2      | `ls -la \| grep ".js"`                 |
| `cmd > file`           | Write output to file (overwrite) | `echo "hello" > greeting.txt`          |
| `cmd >> file`          | Append output to file            | `echo "world" >> greeting.txt`         |
| `cmd1 \| cmd2 \| cmd3` | Chain multiple pipes             | `cat log.txt \| grep "error" \| wc -l` |

### Useful Pipe Examples

```bash
# Count all .js files in current directory (recursively)
find . -name "*.js" | wc -l

# Find the 5 largest files in current directory
ls -lS | head -5

# Search for "test" in all .ts files
find . -name "*.ts" | xargs grep "test"

# List all unique file extensions in a project
find . -type f | sed 's/.*\.//' | sort -u
```

---

## 🔐 Permissions (basics)

Each file has 3 permission groups: **owner**, **group**, **others**. Each group can have **r** (read), **w** (write), **x** (execute).

```bash
# View permissions
ls -la
# Output: -rw-r--r--  1 user  staff  1234 Feb 12 10:00 file.txt
#          ^^^^^^^^^^^
#          permissions

# Make a script executable
chmod +x run-tests.sh

# Run an executable script
./run-tests.sh
```

---

## 🌍 Environment Variables

| Command            | Description                      | Example                |
| ------------------ | -------------------------------- | ---------------------- |
| `echo $VAR`        | Print variable value             | `echo $PATH`           |
| `export VAR=value` | Set variable for current session | `export NODE_ENV=test` |
| `env`              | List all environment variables   | `env`                  |
| `printenv VAR`     | Print specific variable          | `printenv HOME`        |

### Common Variables

| Variable | Description                                    |
| -------- | ---------------------------------------------- |
| `$PATH`  | Directories where the shell looks for commands |
| `$HOME`  | Your home directory                            |
| `$USER`  | Current username                               |
| `$SHELL` | Current shell (e.g., `/bin/zsh`)               |
| `$PWD`   | Current working directory                      |

---

## ⚙️ Process Management

| Command               | Description                 | Example               |
| --------------------- | --------------------------- | --------------------- |
| `ps aux`              | List all running processes  | `ps aux`              |
| `ps aux \| grep node` | Find specific processes     | `ps aux \| grep node` |
| `kill <PID>`          | Terminate a process by PID  | `kill 12345`          |
| `kill -9 <PID>`       | Force kill a process        | `kill -9 12345`       |
| `Ctrl + C`            | Stop the running command    | —                     |
| `Ctrl + Z`            | Suspend the running command | —                     |
| `Ctrl + D`            | Exit the current shell      | —                     |

---

## 📦 Package Managers (preview)

You'll dive deeper into npm in the next lesson. For now, just know these exist:

| Tool   | Description                                         |
| ------ | --------------------------------------------------- |
| `brew` | macOS package manager ([Homebrew](https://brew.sh)) |
| `apt`  | Debian/Ubuntu package manager                       |
| `npm`  | Node.js package manager                             |
| `npx`  | Run npm packages without installing globally        |

```bash
# Install Homebrew (macOS)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install a tool via Homebrew
brew install tree
brew install jq

# Useful installed tools
tree          # Visual directory tree
jq '.' file   # Pretty-print JSON
```

---

## 🛠 Shortcuts & Productivity

| Shortcut   | Description                           |
| ---------- | ------------------------------------- |
| `Tab`      | Autocomplete file/command names       |
| `↑ / ↓`    | Navigate through command history      |
| `Ctrl + R` | Reverse search through history        |
| `Ctrl + A` | Move cursor to beginning of line      |
| `Ctrl + E` | Move cursor to end of line            |
| `Ctrl + W` | Delete previous word                  |
| `Ctrl + U` | Delete entire line                    |
| `Ctrl + L` | Clear terminal screen                 |
| `!!`       | Repeat last command                   |
| `!$`       | Use last argument of previous command |
| `history`  | Show command history                  |
| `clear`    | Clear terminal                        |

---

## 📚 Further Reading

- 📖 [Linux Command Line Basics — freeCodeCamp](https://www.freecodecamp.org/news/the-linux-commands-handbook/)
- 📖 [The Art of Command Line (GitHub)](https://github.com/jlevy/the-art-of-command-line)
- 📖 [Explain Shell — paste any command and get explanation](https://explainshell.com/)
- 📖 [tldr pages — simplified man pages](https://tldr.sh/)
- 📖 [Bash Scripting Tutorial](https://www.shellscript.sh/)
- 📖 [Zsh Documentation](https://zsh.sourceforge.io/Doc/)
- 📖 [Homebrew Documentation](https://docs.brew.sh/)
