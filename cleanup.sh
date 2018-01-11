# cleanup script to run on vagrant halt/suspend/destroy

cd /vagrant

if [[ `git status --porcelain` ]]; then
	git add -A
	git commit -m '/$(date  -d "today" +"%Y%m%d%H%M") auto-backup'
	git push
fi