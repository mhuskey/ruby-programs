# instance variable
@quizzes = {}
@name = ""

# beginning methods
def welcome_screen
	puts "Would you like to (1) build a quiz or (2) take a quiz? Type (3) to exit."
	choice = gets.chomp.to_i

	if choice == 1 || choice == 2
		build_or_take(choice)
	elsif choice == 3
		puts "Bye!"
		exit
	else
		puts "Please choose 1 or 2."
		welcome_screen
	end
end

def build_or_take(choice)
	case choice
	when 1
		build_quiz
		welcome_screen
	when 2
		if @quizzes.empty?
			puts "Sorry, there are no quizzes to take yet. Go build one."
			build_quiz
			welcome_screen
		else
			menu
		end
	end
end

# build a quiz methods
def build_quiz
	q_and_a = {}
	puts "What is the name of this quiz?"
	name = gets.chomp
	puts "How many questions? Please choose an integer, such as 5, 10, or 20."
	number_of_questions = gets.chomp.to_i

	if number_of_questions <= 0
		how_many_questions
	else
		number_of_questions.times do
			puts "Enter a question."
			question = gets.chomp
			puts "Enter the answer."
			answer = gets.chomp
			q_and_a[question] = answer
		end
		@quizzes[name] = q_and_a
	end
end

# take a quiz methods
def menu
	puts "Which quiz would you like to take?"

	@quizzes.keys.each_with_index do |title, index|
		puts "#{index + 1}. #{title}"
	end

	answer = gets.chomp.to_i
	puts @quizzes.length
	if answer >= 1 && answer <= @quizzes.length
		take_quiz(@quizzes.keys[answer - 1])
		welcome_screen
	else
		puts "Invalid choice. Please choose an available quiz, such as 1 or 2."
		menu
	end
end

def take_quiz(quiz)
	system("clear")
	score = 0
	total_questions = @quizzes[quiz].length

	@quizzes[quiz].each do |key, value|
		puts key
		answer = gets.chomp

		if answer == value
			puts "Correct!"
			score += 1
		else
			puts "Incorrect! The correct answer was #{value}."
		end
	end

	puts "Your final score was #{score}!"
	puts "You got #{score} questions correct out of #{total_questions}!"
end

welcome_screen








