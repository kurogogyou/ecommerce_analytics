### Reset Schema
# This script is used to reset the database schema to start from scratch. 
# Use only for test purposes.

import pg_connector as pgc

initialize_query = r'sql/reset_schema.sql'

def initialize_db(cursor):
    with open(initialize_query, 'r') as i:
        print('Initializing...')
        cursor.execute(i.read())
        print('Initialization done.')

if __name__ == "__main__":
    try:
        conn = pgc.get_connection()
        cur= conn.cursor()
        initialize_db(cur)
    except Exception as e:
        print(e)