build:
	docker build -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/ssdc-rm-ui-tests .

install:
	npm install --no-save cypress@9.6.0

local-test: install
	npx cypress run
