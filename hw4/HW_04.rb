###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
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

i = 0

def increment_guess_count(i)
	return i += 1
end

def guesses_left(i)
	puts "You have " + (3-i).to_s + " guesses left"
end

while i < 3
  puts "Please enter a number between 1 and 10."
  guesses_left(i)
	guess = gets.to_i
	if guess == secret_number
		puts messages[:win]
		correct_answer = true
		break
	elsif guess < secret_number
		# guesses_left -= 1
		increment_guess_count(i)
		puts messages[:too_low]
	elsif guess > secret_number
		# guesses_left -= 1
		increment_guess_count(i)
		puts messages[:too_high]
	end
end

# If the user does not get the correct answer
if correct_answer == false
	puts messages[:lose]
end

