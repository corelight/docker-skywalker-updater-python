
FROM python:3.8.0-buster

WORKDIR /app

COPY . .
RUN ls
RUN pip install pipenv

RUN cat Pipfile

RUN pipenv lock --requirements > requirements.txt

RUN ls

RUN cat requirements.txt | echo

RUN pip install -r requirements.txt

