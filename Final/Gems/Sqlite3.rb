require 'sqlite3'

def database
    info=SQLite3::Database.new('Table.db')

    info.execute <<-SQL
        CREATE TABLE IF NOT EXISTS USERS (
            id INTEGER PRIMARY KEY, 
            name TEXT,
            age INTEGER
        );
    SQL

    info.close
end 

def insert(name, age)
    info=SQLite3::Database.open('Table.db')
    info.execute("INSERT INTO users (name, age) VALUES (?, ?);", name, age)

    info.close
end

def display
    info=SQLite3::Database.open('Table.db')
    users=info.execute('SELECT * FROM users;')

    puts "All Users:"
    users.each do |user|
        puts "Person: #{user[0]}, Name: #{user[1]}, Age: #{user[2]}"
    end

    info.close
end

def main
    database

    puts "Please enter the user information:"
    print "Name: "
    name=gets.chomp
    print "Age: "
    age=gets.chomp.to_i

    insert(name, age)

    display
end

main