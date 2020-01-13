
FROM python:3.8.0-buster

WORKDIR /app

COPY . .
RUN ls

RUN apk add --update python py-pip             && \
    pip install --upgrade awscli python-gitlab && \
    apk --purge del py-pip                     && \
    rm /var/cache/apk/*

RUN pip install pipenv

RUN cat Pipfile

RUN pipenv lock --requirements > requirements.txt

RUN ls

RUN cat requirements.txt | echo

RUN pip install -r requirements.txt

CMD ["python", "main.py"]