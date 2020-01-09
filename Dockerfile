
FROM python:3.8.0-buster
COPY . .
RUN pip install pipenv\
cd /tmp && pipenv lock --requirements > requirements.txt\
pip install



