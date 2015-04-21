require_relative 'character_race'
require_relative 'character_class'
require_relative 'skill_set'
require_relative 'class_level'

class Character
	attr_accessor :strength, :dexterity, :constitution,
					 :intelligence, :wisdom, :charisma,
					 ###
					 :class, :race, :skill_set
	def initialize()

		@strength = {:score => 0, :mod => 0}		#
		@dexterity = {:score => 0, :mod => 0}		#
		@constitution = {:score => 0, :mod => 0}	# ability score based on dice roll
		@intelligence = {:score => 0, :mod => 0}	# ability modifier = (score/2)-5
		@wisdom = {:score => 0, :mod => 0}			#
		@charisma = {:score => 0, :mod => 0}		#

		@race = nil

		@class 				# player choice 
		@hit_points			# based on class.hit_dice
		@armour_class = 10	# 10 + armour_bonus + dex_mod
		@gold				# based on class

		@weapon_arry = []
		@skill_set = SkillSet.new
	end
	
	def score_to_mod(score)  	# the formula that derives ability
		modifier = (score/2)-5 	# modifier from ability score
		return modifier
	end

	def update_ability_modifiers
		@strength[:mod] = score_to_mod(@strength[:score])
		@dexterity[:mod] = score_to_mod(@dexterity[:score])
		@constitution[:mod] = score_to_mod(@constitution[:score])
		@intelligence[:mod] = score_to_mod(@intelligence[:score])
		@wisdom[:mod] = score_to_mod(@wisdom[:score])
		@charisma[:mod] = score_to_mod(@charisma[:score])	
	end	

	def update_skill_mods
		update_ability_modifiers

		 skill_hash = @skill_set.skills 
		skill_arry = skill_hash.to_a
		count = 0

		while count < skill_arry.length
			
			if skill_arry[count][1][:related_ability] == "Dexterity"
				skill_arry[count][1][:ability_mod] = @dexterity[:mod]
	
				elsif skill_arry[count][1][:related_ability] == "Strength"
					skill_arry[count][1][:ability_mod] = @strength[:mod]		
				
				elsif skill_arry[count][1][:related_ability] == "Wisdom"
					skill_arry[count][1][:ability_mod] = @wisdom[:mod]
				
				elsif skill_arry[count][1][:related_ability] == "Intelligence"
					skill_arry[count][1][:ability_mod] = @intelligence[:mod]	

				elsif skill_arry[count][1][:related_ability] == "Charisma"
					skill_arry[count][1][:ability_mod] = @charisma[:mod]		
			end
			count+=1
		end

		@skill_set.skills = Hash[skill_arry]
	end		

	def set_class_skills
		class_skills = @class.class_skills  # [:appraise, :craft1, :fly]
		skill_hash = @skill_set.skills 		# {:acrobatics => { :skill_name => "Acrobatics", :Total_bonus => nil}}
		count = 0
		while count < class_skills.length
			class_skill = class_skills[count]
			skill_hash[class_skill][:class_skill_bonus] = 3
			count+=1
		end

	end

	def set_ability_scores(arry)
		@strength[:score] = arry[0]		
		@dexterity[:score] = arry[1]
		@constitution[:score] = arry[2]		
		@intelligence[:score] = arry[3]		
		@wisdom[:score] = arry[4]
		@charisma[:score] = arry[5]
		
		update_ability_modifiers
	end



	def pick_ability  # some races require that you choose an ability to buff
		puts "Yo so this race requiers you to pick an ability to buff"
		puts "pick an ability: \nstrength \ndexteriry \nconstitution"
		puts "intelligence \nwisdom \ncharisma"
		choice = gets
		return choice
	end

	def set_character_race(race)
		if race == "human"			
			choice = pick_ability
			@race = HumanRace.new(choice)
		
		elsif race == "elf"
			@race = ElfRace.new		
			
		elsif race == "dwarf"
			@race = DwarfRace.new
		
		elsif race =="gnome"	
			@race = GnomeRace.new
		
		elsif race == "halfling"
			@race = HalflingRace.new
		
		elsif race == "halfelf"
			choice = pick_ability
			@race = HumanRace.new(choice)			
			@race = HalfElfRace.new
		
		elsif race == "halforc"
			choice = pick_ability
			@race = HumanRace.new(choice)			
			@race = HalfOrcRace.new
		else
			puts "well shit"
		end
		add_racial_bonuses
		update_skill_mods
	end

	def set_character_class(job)
		if job == "wizard"
			@class = WizardClass.new
			puts "class: #{@class}"
			@hit_points = @class.hit_dice
		else
			puts "class selection error"
		end
		@class.initiate_character_class_attributes
	end

	def show_ability_scores
		puts "strength: #{@strength}"
		puts "dexterity: #{@dexterity}"
		puts "constitution: #{@constitution}"
		puts "intelligence: #{@intelligence}"
		puts "wisdom: #{@wisdom}"
		puts "charisma: #{@charisma}"
	end

	def race_skill_buffs
		bonuses = @race.skill_bonuses
		count = 0
		while count < bonuses.length
			skill = bonuses[count][:skill]
			value = bonuses[count][:value]
			@skill_set.update_racial_bonuses(skill, value)
			count+=1
		end
	end

	def add_racial_bonuses		
		@strength[:score] += @race.racial_bonuses[:strength]
		@dexterity[:score] += @race.racial_bonuses[:dexterity]
		@constitution[:score] += @race.racial_bonuses[:constitution]
		@intelligence[:score] += @race.racial_bonuses[:intelligence]
		@wisdom[:score] += @race.racial_bonuses[:wisdom]
		@charisma[:score] += @race.racial_bonuses[:charisma]

		update_ability_modifiers
		race_skill_buffs
	end


end




