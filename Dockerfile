FROM python:3.10.4
RUN apt-get update  &&  apt-get install nano

ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask-docker.py"]
