class InteractiveCalculator
    def initialize(terminal)
        @terminal = terminal
    end
   
    def run
        @terminal.puts "Hello. I will subtract two numbers."
        @terminal.puts "Please enter a number"
        num1 = @terminal.gets.chomp
        @terminal.puts "Please enter another number"
        num2 = @terminal.gets.chomp
        @terminal.puts "Here is your result:\n#{num1} - #{num2} = #{(num1.to_i - num2.to_i).to_s}"
    end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

#PUTS 
# Hello. I will subtract two numbers.
#PUTS
# Please enter a number
# GETS
# 4
# PUTS
# Please enter another number
#GETS
# 3
# PUTS
# Here is your result:
# 4 - 3 = 1