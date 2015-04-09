require_relative 'character_class'
class Character
	attr_accessor :strength, :dexterity, :constitution,
					 :intelligence, :wisdom, :charisma,
					 :class
	def initialize()
		@strength = 0
		@dexterity = 0
		@constitution = 0
		@intelligence = 0
		@wisdom = 0
		@charisma = 0

		@class
		@hit_points
		@armour_class
	end
	def set_ability_scores(arry)
		@strength = arry[0]
		@dexterity = arry[1]
		@constitution = arry[2]
		@intelligence = arry[3]
		@wisdom = arry[4]
		@charisma = arry[5]
		@hit_points
		@armour_class
	end

	def set_character_class(job)
		if job == "wizard"
			@class = WizardClass.new
			puts "class: #{@class}"
			@hit_points = @class.hit_dice
			puts "hit_points: #{@class.hit_dice}"
		else
			
		end
	end

	def show_ability_scores
		puts "strength: #{@strength}"
		puts "dexterity: #{@dexterity}"
		puts "constitution: #{@constitution}"
		puts "intelligence: #{@intelligence}"
		puts "wisdom: #{@wisdom}"
		puts "charisma: #{@charisma}"
	end

end















