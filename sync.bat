@echo off
time /t
git add -A .
git commit -m %1
git push