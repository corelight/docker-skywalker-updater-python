
FROM python:3.8.0-buster
COPY . .
RUN pip install pipenv

RUN pipenv install



