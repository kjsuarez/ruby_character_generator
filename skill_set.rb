class SkillSet
	attr_accessor :ranks, :acrobatics, :climb


	def initialize()
		@ranks

		@skills = {

			:acrobatics => { :skill_name => "Acrobatics", :Total_bonus => nil,
				 			:related_ability => "Dexterity",
				  			:ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:appraise => { :skill_name => "Appraise", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:bluff => { :skill_name => "Bluff", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:climb => { :skill_name => "Climb", :Total_bonus => nil,
				 			:related_ability => "Wisdom",
				 		 :ability_mod => nil, :ranks => nil, :race_bonus => nil },
		
			:craft1 => { :skill_name => "Craft____", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:craft2 => { :skill_name => "Craft____", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },
				  
			:craft3 => { :skill_name => "Craft____", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	  	  

			:diplomacy => { :skill_name => "Diplomacy", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:disable_device => { :skill_name => "Disable device", :Total_bonus => nil,
				 :related_ability => "Dexterity",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	
				  
			:disguise => { :skill_name => "Disguise", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:escape_artist => { :skill_name => "Escape artist", :Total_bonus => nil,
				 :related_ability => "Dexterity",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:fly => { :skill_name => "Fly", :Total_bonus => nil,
				 :related_ability => "Dexterity",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:handle_animal => { :skill_name => "Handle animal", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:heal => { :skill_name => "Heal", :Total_bonus => nil,
				 :related_ability => "Wisdom",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	

			:intimidate => { :skill_name => "Intimidate", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	
				  
			:knowledge_arcana => { :skill_name => "Knowledge arcana", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:knowledge_dungeoneering => { :skill_name => "Knowledge dungeoneering",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },
				  
			:knowledge_engineering => { :skill_name => "Knowledge engineering",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },
				  
			:knowledge_geography => { :skill_name => "Knowledge geography",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:knowledge_history => { :skill_name => "Knowledge history",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },
				  
			:knowledge_local => { :skill_name => "Knowledge local",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:knowledge_nature => { :skill_name => "Knowledge nature",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:knowledge_nobility => { :skill_name => "Knowledge nobility", 
					:Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:knowledge_planes => { :skill_name => "Knowledge planes",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },
				  
			:knowledge_religion => { :skill_name => "Knowledge religion",
				 :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:linguistics => { :skill_name => "Linguistics", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	  	   	  	  	        	  	      		 

			:perception => { :skill_name => "Perception", :Total_bonus => nil,
				 :related_ability => "Wisdom",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	

			:perform1 => { :skill_name => "Perform____", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	  

			:perform2 => { :skill_name => "Perform____", :Total_bonus => nil,
				 :related_ability => "Charisma",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	  

			:profession1 => { :skill_name => "Profession____", :Total_bonus => nil,
				 :related_ability => "Wisdom",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	

			:profession2 => { :skill_name => "Profession____", :Total_bonus => nil,
				 :related_ability => "Wisdom",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	

			:profession1 => { :skill_name => "Profession", :Total_bonus => nil,
				 :related_ability => "Wisdom",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	  

			:ride => { :skill_name => "Ride", :Total_bonus => nil,
				 :related_ability => "Dexterity",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },

			:sense_motive => { :skill_name => "Sense motive", :Total_bonus => nil,
				 :related_ability => "Wisdom",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },
				  
			:sleight_of_hand => { :skill_name => "Sleight of hand", :Total_bonus => nil,
				 :related_ability => "Dexterity",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	 

			:spellcraft => { :skill_name => "Spellcraft", :Total_bonus => nil,
				 :related_ability => "Intelligence",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil },	

			:stealth => { :skill_name => "Stealth", :Total_bonus => nil,
				 :related_ability => "Dexterity",
				  :ability_mod => nil, :ranks => nil, :race_bonus => nil }     	  	  

		}
	end

	def show_skills
		puts "perception: #{@skills[:perception][:race_bonus]}"
		puts "spellcraft: #{@skills[:spellcraft][:race_bonus]}"
	end

	def update_racial_bonuses(skill, bonus)
		@skills[skill][:race_bonus] = bonus	
	end
end
skillz = SkillSet.new
skill = :acrobatics
skillz.update_racial_bonuses(skill, 5)
skillz.show_skills





