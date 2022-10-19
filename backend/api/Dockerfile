FROM python:3.10.7-slim

WORKDIR /api

RUN set -ex \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get update \
  && apt-get install -y --no-install-recommends curl wget bzip2

ENV PATH /root/.local/bin:$PATH
RUN curl -sSL https://install.python-poetry.org | python3 -

RUN wget https://github.com/singletongue/WikiEntVec/releases/download/20190520/jawiki.word_vectors.100d.txt.bz2 \
  && bzip2 -d jawiki.word_vectors.100d.txt.bz2

COPY poetry.lock /api
COPY pyproject.toml /api

RUN poetry config virtualenvs.create false
RUN poetry update

COPY . /api
CMD ["python", "-m", "api"]
