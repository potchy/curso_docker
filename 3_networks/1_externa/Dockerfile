FROM python

RUN apt-get update -y
RUN apt-get install -y python3-pip

WORKDIR /app

RUN pip install flask
RUN pip install requests

COPY . .

EXPOSE 5000

CMD ["flask", "--debug", "run", "--host=0.0.0.0"]