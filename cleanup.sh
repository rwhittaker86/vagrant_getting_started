# #!/usr/bin/env bash
cd /vagrant
if  [[ `git status --porcelain` ]]  
then
	git add -A
	git reset -- .vagrant/*
	git reset -- bootstrap.sh
	git commit -m '/$(date +"%Y%m%d%H%M") auto-backup'
	git push
fi
