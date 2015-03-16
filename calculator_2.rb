# Change one
  # Move the question about which operator the user wants to use and 'operator = gets.chomp' into a loop 
  # which continues until the user enters either 1, 2, 3 or 4 by checking if the user's input is 
  # included in the array ['1', '2', '3', '4']. This ensures that the input to the if/else will always be valid.
 
# Change two
  # Change num1 and num2 variable names to first_number and second_number. 
  # This makes the code a little more readable to me.
 
def say(words)
  puts words
end
 
begin
  say("Hi, please enter the first number.")
  first_number = gets.chomp
 
  say("Ok, now please enter the second number.")
  second_number = gets.chomp
 
  say("Your first number is #{first_number} and your second number is #{second_number}.")
 
  begin
    say("What operation do you want to perform? Press 1 for addition, 2 for subtraction, 3 for multiplication and 4 for division.")
    operator = gets.chomp
  end until ['1', '2', '3', '4'].include?(operator)
  
  result = 
    if operator == '1'
      first_number.to_i + second_number.to_i
    elsif operator == '2'
      first_number.to_i - second_number.to_i
    elsif operator == '3'
      first_number.to_i * second_number.to_i
    elsif operator == '4'
      first_number.to_f / second_number.to_f
    end
 
  say("The result is #{result}")
 
  say("Do you want to calculate anything else?. Type 'Yes' or 'No' ")
 
  continue = gets.chomp
end while continue.downcase == 'yes'