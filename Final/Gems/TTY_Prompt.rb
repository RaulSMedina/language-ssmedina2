require 'tty-prompt'

def input
    prompt=TTY::Prompt.new

    name=prompt.ask('Please enter your name') do |q|
        q.required(true)
        q.modify :capitalize

    end

    hobbies=prompt.multi_select('Select all you hobbies:', %w(Reading Sports Video_Games Sleeping))
    animal=prompt.select('Choose your favorite animal:', %w(Monkey Dog Cat Frog Fox Horse Lion))
    age=prompt.ask('How old are you', convert: :int) do |q|
        q.validate(/\A\d+\Z/, 'The number you entered is not vaild please try agian.')
    end

    puts "\nHello, #{name}"
    puts "Your hobbies are: #{hobbies.join(', ')}"
    puts "Your favorite animal is #{animal.downcase}."
    puts "You are #{age} years old."
end

def main
    puts "Welcome to my program"
    input
end

main