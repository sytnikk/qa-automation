#!/bin/bash

# ===================================================
# Task 4 — Environment & Processes
# ===================================================
# Write the commands below each step.
# You can run this file to check your work:
#   chmod +x task-4.sh
#   ./task-4.sh
# ===================================================

# 1. Print the values of $HOME, $USER, $SHELL, and $PATH
env | grep -E 'HOME|USER|SHELL|PATH'

# 2. Create a custom environment variable QA_ENV=staging and print it
export QA_ENV=staging
echo $QA_ENV

# 3. List all running processes and filter for any "node" processes
ps aux | grep node

# 4. Explain what Ctrl+C, Ctrl+Z, and Ctrl+D do
#    (write your answers as comments below)
#
# Ctrl + C:
# Ctrl + Z:
# Ctrl + D:

