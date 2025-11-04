from flask import Flask
app = Flask(__name__)

@app.route('/')
#def show_image():
#   return '<img src="/static/1.jpg">'
def hello():
    return '<h1>BERHASIL</h1>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
