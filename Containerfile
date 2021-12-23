FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN fuegoskrilla create-db
RUN fuegoskrilla populate-db
RUN fuegoskrilla add-user -u admin -p admin
EXPOSE 5000
CMD ["fuegoskrilla", "run"]
