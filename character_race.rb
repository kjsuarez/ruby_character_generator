class CharacterRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }
		#size
		#vision
		#language
		#bonuses: skill, attack-rolls, saving throws			  		
	end		
end

class ElfRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }		
	end		
end

class DwarfRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 2, :intelligence => 0,
					  		:wisdom => 2, :charisma => -2 }		
	end	
end

class HumanRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }		
	end		
end






