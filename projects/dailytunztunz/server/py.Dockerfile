FROM python:3.8
LABEL mantainer="l.d.mattiazzi@gmail.com"

RUN mkdir /app
COPY ./*.py /app/
COPY requirements.txt /app/.
COPY .env /app/.env

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python", "index.py"]