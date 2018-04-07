build:
	sed -i 's/\[@\(.*\)\]/{% cite \1 %}/g' _posts/*
	jekyll build

deploy:
	git branch -D master
	git checjout -b master
	git filter-branch --subdirectory-filter _site/ -f
	git add .
	git commit -m "Deploy"
	git push -f --set-upstream origin master
