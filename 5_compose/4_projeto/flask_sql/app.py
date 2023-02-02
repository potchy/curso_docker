import flask
import requests
import pyodbc
import os

app = flask.Flask(__name__)

@app.route("/", methods=["GET"])
def getIndex():
    data = requests.get("https://randomuser.me/api")
    return data.json()

@app.route("/", methods=["POST"])
def postIndex():
    data = requests.get("https://randomuser.me/api").json()
    username = data["results"][0]["name"]["first"]

    # https://stackoverflow.com/questions/45934315/is-there-a-dispose-pattern-in-python
    connection = pyodbc.connect(os.getenv("CONNECTION_STRING"))
    cursor = connection.cursor()
    cursor.execute("INSERT INTO users(name) VALUES (?)", username)
    connection.commit()
    cursor.close()
    connection.close()

    return username