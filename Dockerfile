FROM python:3.9-slim-bullseye

WORKDIR /app/
COPY . .

RUN apt update; apt-get install -yy apache2

RUN pip3 install -r requirements.txt

CMD ["bash","run.sh"]

EXPOSE 9907
