ui-tests:
	PUBSUB_EMULATOR_HOST=localhost:8538 pipenv run python run.py --log_level WARN

build:
	docker build -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/ssdc-rm-ui-tests .