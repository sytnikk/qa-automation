#!/bin/bash

# ===================================================
# Task 2 — File & Directory Operations
# ===================================================
# Write the commands below each step.
# You can run this file to check your work:
#   chmod +x task-2.sh
#   ./task-2.sh
# ===================================================

# 1. Create the following structure inside homework/project/:
#
#    project/
#    ├── src/
#    │   ├── app.js
#    │   └── utils.js
#    ├── tests/
#    │   ├── app.spec.js
#    │   └── utils.spec.js
#    └── README.md

mkdir -p project/src project/tests
touch project/src/app.js project/src/utils.js project/tests/app.spec.js project/tests/utils.spec.js project/README.md

# 2. Create notes.txt and write "Hello, QA Automation!" into it

touch notes.txt
echo "Hello, QA Automation!" > notes.txt

# 3. Copy notes.txt into the project/ directory

cp notes.txt project/

# 4. Rename project/notes.txt to project/info.txt

mv project/notes.txt project/info.txt

# 5. Delete the tests/ directory with all its contents

rm -rf project/tests

