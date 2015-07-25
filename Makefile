dist: clean
	node_modules/.bin/vuepress build content
	ln -s content/.vuepress/dist/* .

.PHONY: clean
clean:
	find . -maxdepth 1 -type l | xargs rm

dev: node_modules
	node_modules/.bin/vuepress dev .

node_modules: package-lock.json
	npm install
