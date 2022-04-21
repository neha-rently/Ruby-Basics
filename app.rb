require "json"
require_relative "utils.rb"


def menu()
    puts "1. Signup\n2. Login"
    option = gets.chomp.to_i
    case(option)
    when 1
        signup()
    when 2
        login()
    else
        puts "Enter a valid option"
    end
end

def signup()
    puts("Enter your username :")
    username = gets.chomp
    db = read_db()
    if db.has_key?(username)
        print("Username already exists")
    else
        puts("Enter your password :")
        password = gets.chomp
        puts("Enter your name :")
        name = gets.chomp
        puts("Enter your age :")
        age = gets.chomp.to_i
        puts("Enter your gender :")
        gender = gets.chomp
        db[username]={"username":username,"password":password,"name":name,"age":age,"gender":gender}
        write_db(db)
    end
end

def login()
    puts("Enter your username :")
    username = gets.chomp
    db = read_db()
    if db.has_key?(username)
        puts("Enter your password :")
        password = gets.chomp
        if db[username]["password"]==password
            puts "Login Successful"
        else
            puts "Incorrect Password"
        end
    else
        puts("Username not found, please signup")
        signup()
    end

end




if __FILE__ == $0
    menu()
end