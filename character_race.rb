require_relative 'skill_set'
require_relative 'character'

class CharacterRace
	attr_accessor :racial_bonuses
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

class ElfRace < CharacterRace
	def initialize()
		@classification = :elf
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
		
		## skill buffs
		# +2 on Spellcraft skill checks made to identify magic items
		# +2 on Perception skill checks 					  		
	end		

	def skill_bonuses
		race_bonuses = [{:skill => :perception, :value => 2},
						 {:skill => :spellcraft, :value => 2}]	
	end
end

class DwarfRace < CharacterRace
	def initialize()
		@classification = :dwarf
		@racial_bonuses = { :strength => 0, :dexterity => 0,
					 		:constitution => 2, :intelligence => 0,
					  		:wisdom => 2, :charisma => -2 }	
		# size: medium 
		# vision: darkvision
		# languages: speaks common and dwarven, see core rulebook for 
		# other possible languages.
		# bonuses:
		# +1 attack bonus against orcs and goblins
		# +2 saving throws against poison and magic			  		
		## skill buffs
		# +2 perception checks to 'unusual stonework'
	end	

	def skill_bonuses
		race_bonuses = [{:skill => :perception, :value => 2},
						 {:skill => :spellcraft, :value => 2}]	
	end	
end

class HumanRace < CharacterRace
	def initialize(ability)
		@classification = :human
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
		#			  			
	end		
end

class HalfElfRace < CharacterRace
	@classification = :human || :elf
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
		# +2 saving throw against enchantment spells
		# +2 bonus on Perception skill checks
		# 'multitalented'-- see core rulebook pg 24,
		# this shit is complicated.					  				
	end

	def skill_bonuses
		race_bonuses = [{:skill => :perception, :value => 2}]	
	end			
end

class HalfOrcRace < CharacterRace
	def initialize(ability)
		@classification = :human || :orc
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

	def skill_bonuses
		race_bonuses = [{:skill => :intimidate, :value => 2},
						 {:skill => :spellcraft, :value => 2}]	
	end			
end

class HalflingRace < CharacterRace
	def initialize()
		@classification = :halfling
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
		###
		# +2 on Perception skill checks
		# +2 on Climb and Acrobatics skill checks
	end	

	def skill_bonuses
		race_bonuses = [{:skill => :perception, :value => 2},
						 {:skill => :climb, :value => 2},
						{:skill => :acrobatics, :value => 2}]	
	end		
end

class GnomeRace < CharacterRace
	def initialize()
		@classification = :gnome
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
		###
		# +2 on Perception skill checks
		# +2 on a craft or profession skill of their choice		  			
	end

	def pick_skill
		puts "you've got a choice of skills to buff,"
		puts "either craft, or profession"
		choice = gets.to_sym
		pass = false
		while pass == false 
			if choice == :craft
				choice = :craft1
				pass = true
			elsif choice == :profession
				pass = true	
			else
				puts "you have to pick craft or profession"
			end
		end
		return choice
	end

	def skill_bonuses
		choice = pick_skill
		race_bonuses = [{:skill => :perception, :value => 2},
						 {:skill => choice, :value => 2}]
	end			
end











