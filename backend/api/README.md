# API

## Preparation

- `python 3.10.7`
- `poetry 1.2.2`

or

- `docker`

Execute below

```shell
wget https://github.com/singletongue/WikiEntVec/releases/download/20190520/jawiki.word_vectors.100d.txt.bz2 \
  && bzip2 -d jawiki.word_vectors.100d.txt.bz2
```

## Execute

```shell
make run
```

```shell
make run-container
```

## Test

```shell
make test
```

```shell
make test-in-container
```