from flask import Flask
app = Flask(__name__)

@app.route('/')
def show_image():
    return '<img src="/static/cat.png">'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
