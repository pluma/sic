LICENSE_COMMENT="/*! sic 0.2.1 Original author Alan Plum <me@pluma.io>. Released into the Public Domain under the UNLICENSE. @preserve */"

cover: lint dist
	@./node_modules/.bin/istanbul cover -x "**/spec/**" \
		./node_modules/mocha/bin/_mocha --report lcov spec/ -- -R spec

coveralls:
	@rm -rf ./coverage
	@./node_modules/.bin/istanbul cover -x "**/spec/**" \
		./node_modules/mocha/bin/_mocha --report lcovonly spec/ -- -R spec && \
		cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js
	@rm -rf ./coverage

test: lint dist
	@./node_modules/.bin/mocha \
		--growl \
		--reporter spec \
		spec/*.spec.js

clean:
	@rm -f 	dist/*

dist/sic.js:
	@echo $(LICENSE_COMMENT) > dist/sic.js
	@cat src/sic.js >> dist/sic.js

dist/sic.globals.js:
	@echo $(LICENSE_COMMENT) > dist/sic.globals.js
	@echo "(function(root){\
	var require=function(key){return root[key];},\
	module={};" >> dist/sic.globals.js
	@cat src/sic.js >> dist/sic.globals.js
	@echo "root.sic = module.exports;\
	}(this));" >> dist/sic.globals.js

dist/sic.amd.js:
	@echo $(LICENSE_COMMENT) > dist/sic.amd.js
	@echo "define(function(require, exports, module) {" >> dist/sic.amd.js
	@cat src/sic.js >> dist/sic.amd.js
	@echo "return module.exports;});" >> dist/sic.amd.js

dist/sic.min.js: dist/sic.js
	@./node_modules/.bin/uglifyjs dist/sic.js --comments -m > dist/sic.min.js

dist/sic.globals.min.js: dist/sic.globals.js
	@./node_modules/.bin/uglifyjs dist/sic.globals.js --comments -m > dist/sic.globals.min.js

dist/sic.amd.min.js: dist/sic.amd.js
	@./node_modules/.bin/uglifyjs dist/sic.amd.js --comments > dist/sic.amd.min.js

dist: clean dist/sic.min.js dist/sic.globals.min.js dist/sic.amd.min.js

lint:
	@./node_modules/.bin/jshint src/sic.js spec
