build:
	docker build -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/ssdc-rm-ui-tests .

install:
	npm install

local-test: install
	npx cypress run
