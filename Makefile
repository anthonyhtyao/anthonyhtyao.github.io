build:
	sed -i 's/\[@\(.*\)\]/{% cite \1 %}/g' _posts/*

deploy:
	git branch -D master
	git checkout -b master
	git filter-branch --subdirectory-filter _site/ -f
	git push -f --set-upstream origin master
