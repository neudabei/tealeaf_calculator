# Calculator App

def say(words)
  puts words
end

begin

  say("Hi, please enter the first number.")
  num1 = gets.chomp

  say("Ok, now please enter the second number.")
  num2 = gets.chomp

  say("Your first number is #{num1} and your second number is #{num2}.")

  say("Now what operation do you want to perform? Press 1 for addition, 2 for subtraction, 3 for multiplication and 4 for division.")

  operator = gets.chomp
   
  result = 
  if operator == '1'
     num1.to_i + num2.to_i
  elsif operator == '2'
    num1.to_i - num2.to_i
  elsif operator == '3'
    num1.to_i * num2.to_i
  elsif operator == '4'
    num1.to_f / num2.to_f
  end

  say("The result is #{result}")

  # rerun the calculator?
  say("Do you want to calculate anything else?. Type 'Yes' or 'No' ")
  continue = gets.chomp
end while continue.downcase == 'yes'
