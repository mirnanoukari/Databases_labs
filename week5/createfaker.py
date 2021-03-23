import psycopg2
from faker import Faker
# https://stackabuse.com/working-with-postgresql-in-python/
con = psycopg2.connect(database="mirna_nu", user="postgres",
                       password="0000", host="127.0.0.1", port="5432")

print("Database opened successfully")
cur = con.cursor()
cur.execute('''CREATE TABLE CUSTOMERZ
       (ID INT PRIMARY KEY     NOT NULL,
       Name           TEXT    NOT NULL,
       Address            TEXT     NOT NULL,
       Age      int   Not Null,
       review        TEXT);''')
print("Table created successfully")
fake = Faker()
for i in range(100000):
    print(i)
    cur.execute("INSERT INTO CUSTOMERZ (ID,Name,Address,Age,review) VALUES ('"+ str(i)+"','"+fake.name()+"','"+fake.address()+"','"+str(fake.random_int(0, 70)) +"','"+fake.text()+"')")
    con.commit()