#!/bin/bash
# Autor: Jakub Szwajkos
# Narzędzia w branży IT - Lab 3
# Komendy do tutoriala: https://learngitbranching.js.org


# SEKCJA LOCAL


# Etap 1: Wprowadzenie do commitów
git commit
git commit

# Etap 2: Gałęzie w Git
git checkout -b bugFix

# Etap 3: Scalanie w Git
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

# Etap 4: Wprowadzenie do Rebase
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

# Etap 5: Odczep sobie HEAD
git checkout C4

# Etap 6: Referencje względne (^)
git checkout bugFix^

# Etap 7: Referencje względne #2 (~)
git branch -f main C6
git branch -f bugFix bugFix~3
git checkout HEAD~1

# Etap 8: Odwracanie zmian
git reset HEAD~1
git checkout pushed
git revert HEAD

# Etap 9: Wprowadzenie do cherry-pick
git cherry-pick C3 C4 C7

# Etap 10: Interaktywny rebase
# W oknie interaktywnym usuń C2 i zmień kolejność na: C3, C5, C4
git rebase -i HEAD~4

# Etap 11: Wzięcie tylko 1 commita
git checkout main
git cherry-pick C4

# Etap 12: Żonglowanie commitami
# W oknie zamień kolejność: C3 górą, C2 dołem, potem z powrotem
git rebase -i HEAD~2
git commit --amend
git rebase -i HEAD~2
git branch -f main HEAD

# Etap 13: Żonglowanie commitami #2
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

# Etap 14: Tagi Gita
git tag v0 C1
git tag v1 C2
git checkout v1

# Etap 15: Git describe
git commit

# Etap 16: Rebase ponad 9000 razy
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

# Etap 17: Wielu rodziców
git branch bugWork main~^2~

# Etap 18: Spaghetti gałęzi
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2


# SEKCJA REMOTE


# Etap 19: Wstęp do klonowania
git clone

# Etap 20: Zdalne gałęzie
git commit
git checkout o/main
git commit

# Etap 21: Git fetch
git fetch

# Etap 22: Git pull
git pull

# Etap 23: Symulacja pracy zespołowej
git clone
git fakeTeamwork main 2
git commit
git pull

# Etap 24: Git push
git commit
git commit
git push

# Etap 25: Rozbieżna historia
git clone
git fakeTeamwork
git commit
git pull --rebase
git push

# Etap 26: Zablokowany main
git checkout -b feature
git push origin feature
git checkout main
git reset --hard o/main

# Etap 27: Wypychanie dla wytrwałych
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push

# Etap 28: Scalanie z remote
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

# Etap 29: Śledzenie zdalnych repo
git fetch
git checkout -b side o/main
git commit
git push origin side:main

# Etap 30: Argumenty git push
git push origin main
git push origin foo

# Etap 31: Argumenty git push rozszerzone
git push origin foo:main
git push origin main~1:foo

# Etap 32: Argumenty fetch
git fetch origin C3:foo
git fetch origin C6:main
git checkout foo
git merge main

# Etap 33: Źródło nicości
git fetch origin :bar
git push origin :foo

# Etap 34: Argumenty pull
git pull origin bar:foo
git pull origin main:side
