# API

## Preparation
- `poetry 1.2.2` or `docker`

## Execute
```shell
poetry run python api
```
or
```shell
docker build -t api-dev --target=dev  . && docker run -p 8080:8080 --rm api-dev
```

## Test
```shell
poetry run pytest tests -v
```
or
```shell
docker build -t api-dev --target=dev . && docker run --rm api-dev bash -c 'pytest tests -v'
```