FROM ubuntu:latest

MAINTAINER Ngo Thuy Thanh Tam "tamb2111949@student.ctu.edu.vn"

RUN apt update -y && apt install -y python3-pip python3-venv python3-dev build-essential

ADD . /flask_app

WORKDIR /flask_app

RUN python3 -m venv venv

RUN /flask_app/venv/bin/pip install -r requirements.txt
    
ENTRYPOINT ["/flask_app/venv/bin/python"]

CMD ["flask_docker.py"]
