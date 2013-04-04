###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
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
puts "You have #{guesses_left} left"

# Secret number generated
secret_number = rand(10)
correct_answer = false

puts "Please enter a number between 1 and 10. You have #{guesses_left} guesses left"
guess = gets.chomp.to_i

begin
	if guess == secret_number
		puts "Congratulations, you guessed correctly!"
		correct_answer = true
		break
	elsif guess < secret_number
		guesses_left -= 1
		puts "Your guess is too low. You have #{guesses_left} guesses left. Please try again"
		guess = gets.chomp.to_i		
	elsif guess > secret_number
		guesses_left -= 1
		puts "Your guess is too high. You have #{guesses_left} guesses left. Please try again"
		guess = gets.chomp.to_i
	end
end while guesses_left > 0

# If the user does not get the correct answer
if correct_answer == false
	puts "Sorry, you did not guess the correct number.  The correct number is: #{secret_number}"
end
