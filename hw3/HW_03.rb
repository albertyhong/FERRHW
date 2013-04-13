###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

# Welcome Message
puts "Welcome to the Guess the Number Game!"
puts "Created by: Albert Hong"

# User inputs name
puts "Please enter your name: "
player_name = gets
puts "Hi " + player_name.strip + "!"
puts "You have three tries to guess the Secret Number between 1 and 10"

guesses_left = 3
# puts "You have #{guesses_left} left"

# Secret number generated
set_of_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# set_of_numbers = (1..10).to_a
secret_number = set_of_numbers.sample

# Messages for user
messages = {:win => "Congratulations, you won!", 
			:lose => "Sorry, you did not guess the correct number.  The correct number is: #{secret_number}", 
			:too_low => "Your guess is too low. Please try again", 
			:too_high => "Your guess is too high. Please try again"}

correct_answer = false

while guesses_left > 0
  puts "Please enter a number between 1 and 10. You have #{guesses_left} guesses left"
	guess = gets.to_i
	if guess == secret_number
		puts messages[:win]
		correct_answer = true
		break
	elsif guess < secret_number
		guesses_left -= 1
		puts messages[:too_low]
	elsif guess > secret_number
		guesses_left -= 1
		puts messages[:too_high]
	end
end

# If the user does not get the correct answer
if correct_answer == false
	puts messages[:lose]
end

