# API

## Preparation

- `poetry 1.2.2` or `docker`

## Execute

```shell
poetry run python api
```

or

```shell
docker build -t api . && docker run -p 8080:8080 --rm api
```

## Test

```shell
poetry run pytest tests -v
```

or

```shell
docker build -t api . && docker run --rm api bash -c 'pytest tests -v'
```

## Format, Lint

```shell
poetry run black . && poetry run flake8 api/ tests/
```