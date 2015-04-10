class CharacterClass
	attr_accessor :hit_dice, :gold 	

	@hit_dice
	@gold
end

class WizardClass < CharacterClass
	def initialize()
		@hit_dice = 8
		@gold = 1000
	end
end

class WarriorClass < CharacterClass 
	def initialize()
		@hit_dice = 10
		@gold = 1200
	end		
end

class RangerClass < CharacterClass
	def initialize()
		@hit_dice = 9
		@gold = 850
	end		
end