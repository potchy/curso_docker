FROM python

RUN pip install flask

WORKDIR /app
COPY . .

EXPOSE 5000
CMD ["flask", "--debug", "run", "--host=0.0.0.0"]