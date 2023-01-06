FROM python

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip install flask
RUN pip install requests
RUN pip install flask_mysqldb

WORKDIR /app

COPY app.py .

EXPOSE 5000

CMD ["flask", "--debug", "run", "--host=0.0.0.0"]