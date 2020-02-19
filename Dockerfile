FROM python:3.7
WORKDIR /app

COPY Pipfile* ./

RUN pip install --upgrade awscli pipenv && \
    pipenv lock --requirements | pip install -r /dev/stdin

ENTRYPOINT [""] # negate upstream python entrypoint
