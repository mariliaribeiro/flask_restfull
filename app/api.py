
from flask import Flask
from flask_restful import Api, Resource, reqparse, fields, marshal

from datetime import datetime
from threading import Thread

# Starting flask app
app = Flask(__name__)
api = Api(app)

class HelloWorldAPI(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        super(HelloWorldAPI, self).__init__()

    def get(self):
        return {'response': 'Hello world!'}

# Routes
api.add_resource(HelloWorldAPI, '/', endpoint='home')

if __name__ == '__main__':
    from waitress import serve
    app.run(host='0.0.0.0', port=8000, debug=True)
