from sqlalchemy import URL, create_engine
 
connection_string = URL.create(
    'postgresql',
    username='<DB_ROLE>',
    password='<DB_PASSWORD>',
    host='<DB_HOSTNAME>',
    database='<DB_DATABASE_NAME>',
)
 
engine = create_engine(connection_string)
