FROM python

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update -y
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql18

RUN apt-get install -y python3-pip
RUN pip install flask
RUN pip install requests
RUN pip install pyodbc

WORKDIR /app

COPY app.py .

EXPOSE 5000

CMD ["flask", "--debug", "run", "--host=0.0.0.0"]