class SkillSet
	attr_accessor :ranks, :acrobatics, :climb

	@ranks

	@acrobatics = { :skill_name => "Acrobatics", :Total_bonus => nil,
			 :related_ability => "Dexterity",
			  :ability_mod => nil, :ranks => nil, :race_bonus => nil }

	@climb = { :skill_name => "Climb", :Total_bonus => nil,
			 :related_ability => "Wisdom",
			  :ability_mod => nil, :ranks => nil, :race_bonus => nil }	

	@perception = { :skill_name => "Perception", :Total_bonus => nil,
			 :related_ability => "Strength",
			  :ability_mod => nil, :ranks => nil, :race_bonus => nil }			  			  

end








