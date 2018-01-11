# #!/usr/bin/env bash
cd /vagrant
if  [[ `git status --porcelain` ]]  
then
	git add -A
	git reset -- .vagrant/*
	git reset -- bootstrap.sh
	git reset -- cleanup.sh
	git commit -m '`date` auto-backup'
	git push https://[your username]:[your password]@github.com/rwhittaker86/vagrant_getting_started
fi
