FROM python:3.10.7-slim as dev

WORKDIR /api

RUN set -ex \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get update \
  && apt-get install -y --no-install-recommends curl

ENV PATH /root/.local/bin:$PATH
RUN curl -sSL https://install.python-poetry.org | python3 -

COPY poetry.lock /api
COPY pyproject.toml /api

RUN poetry config virtualenvs.create false
RUN poetry update

COPY . /api
CMD ["python", "-m", "api"]

FROM python:3.10.7-slim as prd

WORKDIR /api

COPY --from=dev /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages
COPY --from=dev /api/api /api/api

CMD ["python", "-m", "api"]