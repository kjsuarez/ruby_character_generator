require_relative 'character_class'
require_relative 'skill_set'
class Character
	attr_accessor :strength, :dexterity, :constitution,
					 :intelligence, :wisdom, :charisma,
					 :class
		
	@strength = 0		#
	@dexterity = 0		#
	@constitution = 0	# based on dice roll
	@intelligence = 0	#
	@wisdom = 0			#
	@charisma = 0		#

	@str_mod			#
	@dex_mod			#
	@con_mod			# modifier = (score/2)-5
	@int_mod			#
	@wis_mod			#
	@cha_mod			#

	@class 				# player choise 
	@hit_points			# based on class.hit_dice
	@armour_class = 10	# 10 + armour_bonus + dex_mod
	@gold				# based on class

	@weapon_arry = []
	@skill_set
	
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















