class Team
	attr_reader :name, :seed
	def initialize(name, seed)
		@name = name
		@seed = seed
	end
end

@teams = []

def menu
	# We are on the clean_up branch
	puts "Welcome to My Tournament Generator. Enter a selection:"

	menu_choices = ["Enter teams", "List teams", "List matchups", "Exit program"]
	length = menu_choices.length

	menu_choices.each_with_index do |title, index|
		if (index + 1) == length
			puts "0. #{title}"
		else
			puts "#{index + 1}. #{title}"
		end
	end
	
	answer = gets.chomp.to_i
	case answer
	when 1
		enter_teams
	when 2
		list_teams
	when 3
		list_matchups
	when 0
		exit
	else
		menu
	end

end

def enter_teams
	still_entering = true
	puts "Please enter teams. Type 'done' when finished."
	while still_entering
		print "Team: "
		name = gets.chomp
		if name.downcase == "done"
			still_entering = false
			menu
		elsif name == ""
			until name != ""
				print "Team: "
				name = gets.chomp
			end
		end

		print "Seed: "
		seed = gets.chomp.to_i

		new_team = Team.new(name, seed)
		@teams.push(new_team)
		puts "Team saved."
	end
end

def list_teams
	if @teams.empty?
		puts "No teams entered yet."
		menu
	else
		puts "Seeds"
	end
	@teams.sort_by! { |t| t.seed }
	@teams.each do |t|
		puts "#{t.seed}: #{t.name}"
	end
	menu
end

def list_matchups
	if @teams.empty?
		puts "No teams entered yet."
		menu
	else
		puts "Matchups"
	end
	@teams.sort_by! { |t| t.seed }
	length = @teams.length
	iterator = 0
	(length / 2).times do
		if length % 2 == 1
			if iterator == 0
				puts "(#{@teams[iterator].seed}) #{@teams[iterator].name} gets a buy"
			end
			puts "(#{@teams[iterator + 1].seed}) #{@teams[iterator + 1].name} versus (#{@teams[-1 - iterator].seed}) #{@teams[-1 - iterator].name}"
		else
			puts "(#{@teams[iterator].seed}) #{@teams[iterator].name} versus (#{@teams[-1 - iterator].seed}) #{@teams[-1 - iterator].name}"
		end
		iterator += 1
	end
	menu
end

menu










