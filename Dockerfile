FROM nginx
RUN pip install -r requirment.txt && export FLASK_APP=main.py && flask run
