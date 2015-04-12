class CharacterRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }
		#size
		#vision
		#languages
		#bonuses: skills, attack-rolls, saving throws			  		
	end		
end

class ElfRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 2,
					 		:constitution => -2, :intelligence => 2,
					  		:wisdom => 0, :charisma => 0 }		
		#size medium
		#vision low-light vision
		#languages common, elvish, see core rulebook for 
		# other possible languages. 
		#bonuses: 
		# immune to magic sleep.	
		# +2 saving throw against enchantment spells
		# +2 on caster level checks to overcome spell resistence
		# +2 on Spellcraft skill checks made to identify magic items 
		# +2 on Perception skill checks			  		
	end		
end

class DwarfRace
	def initialize()
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 2, :intelligence => 0,
					  		:wisdom => 2, :charisma => -2 }	
		# size: medium 
		# vision: darkvision
		# languages: speaks common and dwarven, see core rulebook for 
		# other possible languages.
		# bonuses:
		# +1 attack bonus against ork and goblins
		# +2 saving throws against poison and magic			  		
		# +2 perception checks to unusual stonework
	end	
end

class HumanRace
	def initialize(ability)
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }
		@racial_bonuses[ability.to_sym] = 2

		#size: medium
		#vision: normal
		#languages: Common, see core rulebook for 
		# other possible languages.
		#bonuses:	
		# Humans gain an additional skill rank at
		# first level and at every other level.				  			
	end		
end

class HalfElfRace
	def initialize(ability)
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }
		@racial_bonuses[ability.to_sym] = 2	

		#size: medium
		#vision: low-light
		#languages: common and elven, see core rulebook for 
		# other possible languages.
		#bonuses: 				
		# gets 'Skill Focus' bonus-feat at 1st level
		
		# half-elves count as both elves and humans 
		# for any race related effect
		
		# immune to magic sleep
		# +2 saving throwagainst enchantment spells
		# +2 bonus on Perception skill checks
		# 'multitalented'-- see core rulebook pg 24,
		# this shit is complicated.					  				
	end		
end

class HalfOrcRace
	def initialize(ability)
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 0 }
		@racial_bonuses[ability.to_sym] = 2
		
		#size: medium
		#vision: Darkvision
		#languages: Common and Ork, see core rulebook for 
		# other possible languages.
		#bonuses: 	
		# +2 on Intimidate skill check
		
		# half-orc count as both orcs and humans 
		# for any race-related effect. 
		
		# Once per day a half-orc brought 
		# below 0 hitpoints but not killed 
		# can fight for 1 more round as if disabled.  	 			  			
	end		
end

class HalflingRace
	def initialize()
		@racial_bonuses = { :strength => -2, :dexterity => 2,
					 		:constitution => 0, :intelligence => 0,
					  		:wisdom => 0, :charisma => 2 }		  					  			
		
		# size: small, +1 to AC, +1 to attack-rolls, +4 on Stealth checks 
		# vision: normal
		# languages: Common, Halfling, see core rulebook for 
		# other possible languages.
		# bonuses:	
		# +2 on saving throws against Fear (stacks with halfling-luck)
		# +1 on all saving throws
		# +2 on Perception skill checks
		# +2 on Climb and Acrobatics skill checks
		# 

	end		
end

class GnomeRace
	def initialize()
		@racial_bonuses = { :strength => -2, :dexterity => 0,
					 		:constitution => 2, :intelligence => 0,
					  		:wisdom => 0, :charisma => 2 }	
		#size: small, +1 to AC, +1 to attack-rolls, +4 on Stealth checks
		#vision: lowlight vision
		#languages: Common, Gnome, and Sylvian, see core rulebook for 
		# other possible languages.
		#bonuses:			
		# +4 dodge bonus to AC against the giant subtype
		# Gnome magic-- see core rulebook pg 23, this shit is complicated.
		# +1 on attackrolls against reptiles and goblins
		# +2 saving throw against illusion spells
		# +2 on Perception skill checks
		# +2 on a craft or profession skill of their choice		  			
	end		
end











