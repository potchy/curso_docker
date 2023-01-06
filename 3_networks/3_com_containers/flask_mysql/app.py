import flask
import requests
import flask_mysqldb
from flask_mysqldb import MySQL

app = flask.Flask(__name__)
app.config["MYSQL_HOST"] = "3_com_containers.mysql"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "3_com_containers"

mysql = MySQL(app)

@app.route("/", methods=["GET"])
def getIndex():
    data = requests.get("https://randomuser.me/api")
    return data.json()

@app.route("/", methods=["POST"])
def postIndex():
    data = requests.get("https://randomuser.me/api").json()
    username = data["results"][0]["name"]["first"]

    # https://stackoverflow.com/questions/45934315/is-there-a-dispose-pattern-in-python
    cursor = mysql.connection.cursor()
    cursor.execute("INSERT INTO users(name) VALUES (%s);", {username})
    mysql.connection.commit()
    cursor.close()

    return username