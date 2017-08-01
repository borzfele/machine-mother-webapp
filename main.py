from flask import Flask, render_template, url_for
from data import data_manager

app = Flask('codecool_series')


@app.route('/')
def index():
    result = data_manager.execute_select('''
                                            SELECT name FROM recipes;
                                        ''')
    return render_template('index.html', recipes=result)


def main():
    app.run()


if __name__ == '__main__':
    main()