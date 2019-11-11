from flask import Flask, escape, request, render_template

app = Flask(__name__, template_folder='templates')

@app.route('/')
def index():
    username = request.args.get('username', 'DOOD')
    return render_template('index.html', username=username)

if __name__ == '__main__':
    app.run(debug=True)
