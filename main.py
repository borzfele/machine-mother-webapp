from flask import Flask, render_template, url_for
from data import data_manager
import sql_queries

app = Flask(__name__)


@app.route('/add_recipe')
def index():
    return render_template('add_recipe.html')


def main():
    app.run()


if __name__ == '__main__':
    main()