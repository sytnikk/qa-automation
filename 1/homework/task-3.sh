#!/bin/bash

# ===================================================
# Task 3 — Search & Pipes
# ===================================================
# Write the commands below each step.
# You can run this file to check your work:
#   chmod +x task-3.sh
#   ./task-3.sh
# ===================================================

# 1. Find all .js files in the homework/ directory
find . -name "*.js"

# 2. Count how many .js files exist
find . -name "*.js" | wc -l


# 3. Write the text "TODO: add tests" into app.js
#    (use the app.js created in Task 2)
echo "TODO: add tests" > ./project/src/app.js

# 4. Use grep to find all files containing the word "TODO"
grep "TODO" ./project/src/app.js

# 5. Chain commands: find all .js files → search for "TODO" → count the results
find . -name "*.js" | xargs grep "TODO" | wc -l


