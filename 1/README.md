# Lesson 1 — Terminal Basics

> Navigation, file operations, essential commands

---

## 🎯 What you'll learn

- How to navigate the file system from the command line
- Create, copy, move, and delete files and directories
- View and search file contents
- Use pipes and redirects to chain commands
- Work with environment variables and processes
- Keyboard shortcuts for faster workflow

## 📖 Materials

- 📋 [Terminal Cheatsheet](./cheatsheet.md) — full reference of all commands covered in this lesson

---

## 🛠 How to do the homework

### File structure

Each task has its own `.sh` file in the `homework/` directory:

```
homework/
├── task-1.sh   ← Navigation & Exploration
├── task-2.sh   ← File & Directory Operations
├── task-3.sh   ← Search & Pipes
└── task-4.sh   ← Environment & Processes
```

Open the corresponding file, read the instructions inside, and write your commands under each step.

### How to run `.sh` files

Run the file:

```bash
./homework/task-1.sh
```

Or run without `chmod` using `bash` directly:

```bash
bash homework/task-1.sh
```

> 💡 **Tip**: You don't have to run the whole file at once. You can also copy individual commands from the file and paste them into the terminal to test one by one.

---

## 📝 Homework

### Task 1 — Navigation & Exploration → [`task-1.sh`](./homework/task-1.sh)

1. Print your current directory
2. Navigate to your home directory
3. List all files (including hidden) in your home directory
4. Navigate to the `qa-automation` project directory
5. List the full directory tree (install `tree` via `brew install tree` if needed)

### Task 2 — File & Directory Operations → [`task-2.sh`](./homework/task-2.sh)

1. Inside the `homework/` directory, create the following structure **using only terminal commands**:

   ```
   project/
   ├── src/
   │   ├── app.js
   │   └── utils.js
   ├── tests/
   │   ├── app.spec.js
   │   └── utils.spec.js
   └── README.md
   ```

2. Create `notes.txt` and write `"Hello, QA Automation!"` into it using the `echo` command
3. Copy `notes.txt` into the `project/` directory
4. Rename `project/notes.txt` to `project/info.txt`
5. Delete the `tests/` directory with all its contents

### Task 3 — Search & Pipes → [`task-3.sh`](./homework/task-3.sh)

1. Find all `.js` files in the `homework/` directory
2. Count how many `.js` files exist
3. Write the word `TODO: add tests` into `app.js`
4. Use `grep` to find all files containing the word `TODO`
5. Chain commands: find all `.js` files → search for `TODO` inside them → count the results

### Task 4 — Environment & Processes → [`task-4.sh`](./homework/task-4.sh)

1. Print the values of `$HOME`, `$USER`, `$SHELL`, and `$PATH`
2. Create a custom environment variable `QA_ENV=staging` and print it
3. List all running processes and filter for any `node` processes
4. Explain in a comment what `Ctrl + C`, `Ctrl + Z`, and `Ctrl + D` do

---

### ✅ Submission

1. Write your commands in each `task-*.sh` file
2. Make sure each file runs without errors: `bash homework/task-1.sh`
3. Commit and push your changes to the repository

> 💡 **Tip**: Use the `history` command to recall what you typed while experimenting in the terminal.
