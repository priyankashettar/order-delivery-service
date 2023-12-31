FROM python:3.11.4-slim-buster

WORKDIR /orderservice

COPY . /orderservice/

RUN pip install -r requirements.txt

CMD [ "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8080" ]