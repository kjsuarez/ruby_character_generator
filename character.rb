require_relative 'character_class'
require_relative 'skill_set'
class Character
	attr_accessor :strength, :dexterity, :constitution,
					 :intelligence, :wisdom, :charisma,
					 :class
	def initialize()
		
	@strength = {:score => 0, :mod => 0}		#
	@dexterity = {:score => 0, :mod => 0}		#
	@constitution = {:score => 0, :mod => 0}	# based on dice roll
	@intelligence = {:score => 0, :mod => 0}	#
	@wisdom = {:score => 0, :mod => 0}			#
	@charisma = {:score => 0, :mod => 0}		#

	@class 				# player choise 
	@hit_points			# based on class.hit_dice
	@armour_class = 10	# 10 + armour_bonus + dex_mod
	@gold				# based on class

	@weapon_arry = []
	@skill_set
	end
	
	def set_ability_scores(arry)
		#puts "strength: #{@strength}"
		@strength[:score] = arry[0]
		puts "it worked"
		@dexterity[:score] = arry[1]
		@constitution[:score] = arry[2]
		@intelligence[:score] = arry[3]
		@wisdom[:score] = arry[4]
		@charisma[:score] = arry[5]
	end

	def set_ability_mods
		@str_mod = @strength			
		@dex_mod = @dexterity		
		@con_mod = @constitution	
		@int_mod = @intelligence			
		@wis_mod = @wisdom			
		@cha_mod = @charisma
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














