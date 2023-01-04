import flask
import requests

app = flask.Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    data = requests.get("https://randomuser.me/api")
    return data.json()