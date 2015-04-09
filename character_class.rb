class CharacterClass
	attr_accessor :hitdice 	
	def initialize()
		@hitdice

	end
	
	def hit_dice
		return @hitdice
	end
end

class WizardClass < CharacterClass
	def initialize()
		@hitdice = 8
	end
end

class WarriorClass < CharacterClass 
	def initialize()
		@hitdice = 10
	end		
end

class RangerClass < CharacterClass
	def initialize()
		@hitdice = 9
	end		
end