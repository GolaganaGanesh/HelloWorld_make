# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, this is my Flask web app!'

if __name__ == '__main__':
    app.run(debug=True)
