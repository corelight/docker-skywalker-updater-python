
FROM python:3.7

WORKDIR /app

COPY . .
RUN ls

RUN pip install --upgrade awscli


RUN pip install pipenv

RUN cat Pipfile

RUN pipenv lock --requirements > requirements.txt

RUN ls

RUN cat requirements.txt | echo

RUN pip install -r requirements.txt

ENTRYPOINT ["/bin/bash", "-l", "-c"]