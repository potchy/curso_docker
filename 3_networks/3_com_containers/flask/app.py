import flask
import requests
import pyodbc

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
    connection = pyodbc.connect("Driver={ODBC Driver 18 for SQL Server};Server=172.19.0.2,1433;Database=3_com_containers;UID=sa;PWD=<YourStrong@Passw0rd>;")
    cursor = connection.cursor()
    cursor.execute("INSERT INTO users(name) VALUES (?)", username)
    connection.commit()
    cursor.close()
    connection.close()

    return username