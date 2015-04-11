require_relative 'character_class'
require_relative 'skill_set'
class Character
	attr_accessor :strength, :dexterity, :constitution,
					 :intelligence, :wisdom, :charisma,
					 :class
	def initialize()

	@strength = {:score => 0, :mod => 0}		#
	@dexterity = {:score => 0, :mod => 0}		#
	@constitution = {:score => 0, :mod => 0}	# ability score based on dice roll
	@intelligence = {:score => 0, :mod => 0}	# ability modifier = (score/2)-5
	@wisdom = {:score => 0, :mod => 0}			#
	@charisma = {:score => 0, :mod => 0}		#

	@class 				# player choice 
	@hit_points			# based on class.hit_dice
	@armour_class = 10	# 10 + armour_bonus + dex_mod
	@gold				# based on class

	@weapon_arry = []
	@skill_set
	end
	
	def score_to_mod(score)
		modifier = (score/2)-5
		return modifier
	end

	def set_ability_scores(arry)
		@strength[:score] = arry[0]
		@strength[:mod] = score_to_mod(@strength[:score])

		@dexterity[:score] = arry[1]
		@dexterity[:mod] = score_to_mod(@dexterity[:score])

		@constitution[:score] = arry[2]
		@constitution[:mod] = score_to_mod(@constitution[:score])

		@intelligence[:score] = arry[3]
		@intelligence[:mod] = score_to_mod(@intelligence[:score])

		@wisdom[:score] = arry[4]
		@wisdom[:mod] = score_to_mod(@wisdom[:score])

		@charisma[:score] = arry[5]
		@charisma[:mod] = score_to_mod(@charisma[:score])
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














