class Character
	attr_accessor :racial_bonuses, :race
	def initialize(ability)
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }
		@racial_bonuses[ability.to_sym] = 2

		@race
	end	


def set_character_race(race)
		#puts @race
		puts "chosen race: #{race}"
		if race == "human"			
			choice = pick_ability
			@race = "human"
		
		elsif race == "elf"
			@race = "Elf"		
			puts "it worked"
		else
			puts "well shit"
		end
	end

end
sad_bard = Character.new("strength")
#puts sad_bard.racial_bonuses
sad_bard.set_character_race("elf")











