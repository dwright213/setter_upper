require('pg')

DB = PG.connect({:dbname => "Guest"})

db_name = "a_cool_name_for_this"
db_name_test = (db_name + "_test")
###############################################


table_name = "cool_table_name"

column1 = "name"
column1_type = "varchar"

column2 = "a_number"
column2_type = "int"


column3 = "some_noun"
column3_type = "varchar"


DB.exec("CREATE DATABASE #{db_name};")

#disconnect from Guest database and connect to our new one
DB2 = PG.connect({:dbname => db_name})
DB2.exec("CREATE TABLE #{table_name} (id serial PRIMARY KEY, #{column1} #{column1_type}, #{column2} #{column2_type}, #{column3} #{column3_type});")

#create our test database
DB2.exec("CREATE DATABASE #{db_name_test} WITH TEMPLATE #{db_name};")

###############################################

#or comment out all between the two lines of pound signs above, and delete some databases
# DB.exec("DROP DATABASE #{db_name};")
# DB.exec("DROP DATABASE #{db_name_test};")


# <3 Dan 2015 danwright.co
