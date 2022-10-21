PORT=8080

TEST_COMMAND=pytest tests -v
FORMAT_COMMAND=black .
LINT_COMMAND=flake8 --ignore=E501 api/ tests/
SORT_COMMAND=isort .
GOOGLE_MAP_API_KEY=$(shell cat .env)

run:
	poetry run python -m api

test:
	poetry run ${TEST_COMMAND} && \
	poetry run ${FORMAT_COMMAND} && \
	poetry run ${LINT_COMMAND} && \
	poetry run ${SORT_COMMAND}

build-container:
	docker build -t api . && docker image prune --force

run-container: build-container
	docker run \
		-v $(shell pwd):/api \
		-p ${PORT}:${PORT} \
		--rm api

test-in-container: build-container
	docker run \
		-v $(shell pwd):/api \
		--rm api \
		bash -c '${TEST_COMMAND} && ${FORMAT_COMMAND} && ${LINT_COMMAND} && ${SORT_COMMAND}'

deploy:
	docker build --build-arg map_api_key=${GOOGLE_MAP_API_KEY} -t hobbysma .
	docker tag hobbysma gcr.io/jphacks-techuni-backend/hobbysma 
	docker push gcr.io/jphacks-techuni-backend/hobbysma

	gcloud run deploy --image=gcr.io/jphacks-techuni-backend/hobbysma:latest --cpu 2 --memory 4Gi
