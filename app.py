import time
from flask import Flask
from flask_healthz import healthz

app = Flask(__name__)


@app.route("/liveness")
def liveness():
    return "<h1><center>Liveness check completed</center><h1>"


@app.route("/readiness")
def readiness():
    try:
        return "<h1><center>Readiness check completed</center><h1>"
    except Exception:
        raise HealthError("Readiness failed")


@app.route("/")
def hello():
    return "<h1><center>Hello World app! Version 1</center><h1>"


if __name__ == "__main__":

    app.run(host="0.0.0.0", port=5000)
