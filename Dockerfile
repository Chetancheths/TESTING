FROM ubuntu:latest
MAINTAINER "Chetan"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirement.txt
ENTRYPOINT ["python"]
CMD ["flask.py"] 