require_relative 'character'
require_relative 'character_class'
require_relative 'character_race'
require_relative 'skill_set'
# roll a d20
def roll_d20
	rand(1..20)
end

# roll a d4
def roll_d4
	rand(1..4)
end

# roll a d6
def roll_d6 				
	rand(1..6)
end

def reroll_1s(roll)
	while roll == 1
		roll = 2
	end
	return roll
end

# roll 4d6, reroll 1s 
#remove the lowest value and add the rest together
def generate_ability_score	
	dice = []
	temp = []				
	value = 0
	
	4.times do 			# roll 4 six sided dice
		dice << roll_d6
	end	

	dice.each do |die|	# reroll 1s
		if die == 1
			die = reroll_1s(die)
		end
		temp << die
	end

	dice = temp
	dice.sort!.delete_at(0) # drop the lowest roll and return the sum of the rest
	
	dice.each do |die|
		value = value+die
	end

	return value
end

# roll 6 ability scores, rerolling anything less than 10.
def generate_six_ability_scores
	scores = []
	6.times do |num|
		roll = generate_ability_score
		while roll < 10
			roll = generate_ability_score
		end
		scores << roll
	end
	return scores
end
##############################################################################

ancient_thief = Character.new				# initialize a character

scores = generate_six_ability_scores		# roll six ability scores
											#
ancient_thief.set_ability_scores(scores)	# arbitrairily set those scores (for now)
	
choice = "elf"			
puts "--picks #{choice}--"					# pick a race
ancient_thief.set_character_race(choice)	# sets race

puts "pick your character's class"
puts "--picks wizard--"
ancient_thief.set_character_class("wizard")

ancient_thief.set_class_skills
puts "appraise #{ancient_thief.skill_set.skills[:appraise]}"

ancient_thief.show_ability_scores
puts "available ranks: #{ancient_thief.skill_set.ranks}"













