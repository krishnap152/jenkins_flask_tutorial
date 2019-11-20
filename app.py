from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Dockerized'

@app.route('/bye')
def bye():
    return 'bye byeeeeeee!'

if __name__ == '__main__':

    app.run(debug=True,host='0.0.0.0')