class StringRepeater
    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will repeat a string many times."
        @terminal.puts "Please enter a string"
        word = @terminal.gets.chomp 
        @terminal.puts "Please enter a number of repeats"
        num = @terminal.gets.chomp 
        @terminal.puts word * (num.to_i)
    end
end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# PUTS 
# Hello. I will repeat a string many times.
# PUTS
# Please enter a string
# GETS
# TWIX
# PUTS
# Please enter a number of repeats
# GETS
# 10
# PUTS
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX