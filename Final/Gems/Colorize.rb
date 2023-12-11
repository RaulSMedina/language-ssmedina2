require 'colorize'

def color_messages
    puts "This is the control."

    puts "Example in red.".red
    puts "Example in green.".green
    puts "Example in yellow".yellow
    puts "Example in bule".blue
    puts "Example in magenta".magenta
    puts "Example of highlight in blue".on_blue.white
    puts "#{'Example of styles combine.'.green.on_magenta.underline}"
end

def main
    puts "Ready to make your terminal colorful."
    color_messages
end

main