import connection_string
import psycopg2


def connection_decorator(func):
    def func_wrapper(*args):
        urllib.parse.uses_netloc.append('postgres')
        url = urllib.parse.urlparse(os.environ.get('DATABASE_URL'))
        conn = psycopg2.connect(connection_string.connect_str)
        conn.autocommit = True
        cursor = conn.cursor()
        return func(cursor, *args)
    return func_wrapper

@connection_decorator
def execute_query(cursor, query):
    cursor.execute(query)
    result = cursor.fetchall()
    return result