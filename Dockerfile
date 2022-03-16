FROM nginx

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt && \ 
    export FLASK_APP=main.py && \ 
    flask run
    
COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
