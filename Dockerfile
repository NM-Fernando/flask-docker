FROM nginx

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

RUN pip install -r requirment.txt && export FLASK_APP=main.py && flask run
