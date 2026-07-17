#!/usr/bin/env bash
# Run this from inside the unzipped good-skills/ folder.
# Requires: git installed, and you're logged in / authenticated to GitHub
# (either via `gh auth login`, an SSH key on your account, or a credential
# manager that will prompt you for a token when you push).
set -e

git init
git add .
git commit -m "Initial commit: critical-analysis skill"
git branch -M main
git remote add origin https://github.com/MakeGoodLabs/good-skills.git
git push -u origin main

echo ""
echo "Done. Check https://github.com/MakeGoodLabs/good-skills"
