FROM python:3.10-alpine

WORKDIR /usr/src/app

#prevent python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# prevent caching directly send to console/shell
ENV PYTHONUNBUFFERED 1


RUN pip install --upgrade pip

COPY ./requirements.txt /usr/src/app/requirements.txt

RUN pip install -r requirements.txt

COPY ./entrypoint.sh /usr/src/app/entrypoint.sh

COPY . /usr/src/app/
