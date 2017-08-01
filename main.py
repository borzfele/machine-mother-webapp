from flask import Flask, render_template, url_for
from data import data_manager

app = Flask('codecool_series')


@app.route('/')
def index():
    return render_template('index.html', recipes=result)


def main():
    app.run()


if __name__ == '__main__':
    main()