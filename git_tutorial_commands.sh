#!/bin/bash
# Plik z komendami do tutoriala: https://learngitbranching.js.org
# Autor: Piotr Szwajkos
# Narzedzia w branzy IT - Lab 3

# ============================================================
# SEKCJA: LOCAL (Main)
# ============================================================

# ------------------------------------------------------------
# Czesc 1: Introduction Sequence
# ------------------------------------------------------------

# Etap 1: Introduction to Git Commits
git commit
git commit

# Etap 2: Branching in Git
git checkout -b bugFix

# Etap 3: Merging in Git
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

# Etap 4: Rebase Introduction
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

# ------------------------------------------------------------
# Czesc 2: Ramping Up
# ------------------------------------------------------------

# Etap 1: Detach yo' HEAD
git checkout C4

# Etap 2: Relative Refs (^)
git checkout bugFix^

# Etap 3: Relative Refs #2 (~)
git branch -f main C6
git branch -f bugFix bugFix~3
git checkout HEAD~1

# Etap 4: Reversing Changes in Git
git reset HEAD~1
git checkout pushed
git revert HEAD

# ------------------------------------------------------------
# Czesc 3: Moving Work Around
# ------------------------------------------------------------

# Etap 1: Cherry-pick Intro
git cherry-pick C3 C4 C7

# Etap 2: Interactive Rebase Intro
# W oknie interaktywnym nalezy wybrac i przestawic kolejnosc commitow: C3, C5, C4
git rebase -i HEAD~4

# ------------------------------------------------------------
# Czesc 4: A Mixed Bag
# ------------------------------------------------------------

# Etap 1: Grabbing Just 1 Commit
git checkout main
git cherry-pick C4

# Etap 2: Juggling Commits
# W oknie interaktywnym przestaw C2 przed C3, potem:
git rebase -i HEAD~2
git commit --amend
git rebase -i HEAD~2
git branch -f main HEAD

# Etap 3: Juggling Commits #2
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

# Etap 4: Git Tags
git tag v0 C1
git tag v1 C2
git checkout C2

# Etap 5: Git Describe
# Polecenie opisuje historię commitow wzgledem tagów
git commit

# ------------------------------------------------------------
# Czesc 5: Advanced Topics
# ------------------------------------------------------------

# Etap 1: Rebasing over 9000 times
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

# Etap 2: Multiple parents
git branch bugWork main~^2~

# Etap 3: Branch Spaghetti!
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2

# ============================================================
# SEKCJA: REMOTE
# ============================================================

# ------------------------------------------------------------
# Czesc 1: Push & Pull -- Git Remotes!
# ------------------------------------------------------------

# Etap 1: Clone Intro
git clone

# Etap 2: Remote Branches
git commit
git checkout o/main
git commit

# Etap 3: Git Fetchin'
git fetch

# Etap 4: Git Pullin'
git pull

# Etap 5: Faking Teamwork
git fakeTeamwork main 2
git commit
git pull

# Etap 6: Git Pushin'
git commit
git push

# Etap 7: Diverged History
git fetch
git rebase o/main
git push

# Etap 8: Locked Main
git checkout -b feature
git push origin feature
git reset --hard o/main

# ------------------------------------------------------------
# Czesc 2: To Origin And Beyond -- Advanced Git Remotes!
# ------------------------------------------------------------

# Etap 1: Push Main!
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push

# Etap 2: Merging with remotes
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

# Etap 3: Remote Tracking
git checkout -b side o/main
git commit
git fetch
git rebase o/main
git push

# Etap 4: Git Push Arguments
git push origin main
git push origin foo

# Etap 5: Git Push Arguments -- Expanded!
git push origin foo^:main
git push origin main:foo

# Etap 6: Fetch Arguments
git fetch origin main~1:foo
git fetch origin foo:main
git checkout foo
git merge main

# Etap 7: Source of nothing
git push origin :foo
git fetch origin :bar

# Etap 8: Pull Arguments
git pull origin bar:foo
git pull origin main:side
