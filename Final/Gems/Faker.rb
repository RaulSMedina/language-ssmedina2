require 'faker'

def make_fake
    name=Faker::Name.name
    email=Faker::Internet.email
    address=Faker::Address.full_address
    number=Faker::PhoneNumber.phone_number

    {
        name: name,
        email: email,
        address: address, 
        number: number
    }
end

def main

    puts "How many fake users would you like to make?"
    user=gets.chomp.to_i

    unless user.positive?
        puts "Please enter a postive number."
        exit
    end

    puts "\n Creating #{user} fake users: \n\n"

    user.times do |i|
        account=make_fake
        puts "User ##{i+1}:"
        puts "Name: #{account[:name]}"
        puts "Email: #{account[:email]}"
        puts "Address: #{account[:address]}"
        puts "Phone Number: #{account[:number]}"
        puts "\n"
    end
end

main