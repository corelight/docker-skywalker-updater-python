
FROM python:3.8.0-buster

WORKDIR /app

COPY . .
RUN ls

RUN cat requirements.txt

RUN pip install -r requirements.txt

CMD ["python", "main.py"]