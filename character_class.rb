require_relative 'class_level'

class CharacterClass
	attr_accessor  :level, :saves, :ref_save, :fort_save, :will_save, 
				   :hit_dice, :hp, :gold, :feats,
				   :level_table,:base_attack_bonus, :class_skills
				   	
	
	def initialize()
		@level = 1
		@saves
		@ref_save
		@fort_save 
		@will_save
		@hit_dice
		@hp 
		@gold
		@feats
		@level_table = Class_level.new
		@base_attack_bonus 
		@class_skills 	
	end

	def update_hp						# used when leveling up 
		@hp = @hp + rand(1..@hit_dice)
	end

	def table
		return @level_table.level_table
	end

	def levelkey 						# used for turning a number 
		return "level_#{@level}".to_sym # into the keys of the level_table
	end
	
	def set_base_attack_bonus
		@base_attack_bonus = table[levelkey][:base_attack_bonus]
	end
	
	def set_saves
		@saves = table[levelkey][:saves]
		@ref_save = @saves[:ref_save], @fort_save = @saves[:fort_save]
		@will_save = @saves[:will_save]
	end

	def initiate_character_class_attributes  # sets level based attributes to level 1
		@level = 1
		@hp = @hit_dice
		set_saves
		set_base_attack_bonus
	end

	def level_up					# adds 1 to level and updates level based attributes 
		@level +=1
		update_hp
		set_base_attack_bonus
		set_saves
	end
end

class WizardClass < CharacterClass
	def initialize()
		@level 
		@saves = { :fort_save => nil, :ref_save => nil, :will_save => nil }
		@hit_dice = 8
		@hp
		@base_attack_bonus
		@gold = 1000
		@feats
		@level_table = WizardLevel.new
		@class_skills = [:appraise, :craft1, :fly,
		 :knowledge_arcana, :knowledge_dungeoneering, :knowledge_engineering,
		 :knowledge_geography, :knowledge_history, :knowledge_local, :knowledge_nature,
		 :knowledge_nobility, :knowledge_planes, :knowledge_religion, :linguistics,
		 :profession1, :spellcraft]
	end
end

class WarriorClass < CharacterClass 
	def initialize()
		@saves = { :fort_save => 2, :ref_save => 0, :will_save => 0 }
		@hit_dice = 10
		@hp
		@base_attack_bonus
		@gold = 1200
		@feats
		@level_table = FighterLevel.new
	end		
end

class RangerClass < CharacterClass
	def initialize()
		@saves = { :fort_save => 2, :ref_save => 2, :will_save => 0 }
		@hit_dice = 10
		@hp
		@base_attack_bonus 
		@gold = 850
		@feats
		@level_table = RangerLevel.new
	end		
end

 
#wizbiz = WizardClass.new
#wizbiz.set_saves
#puts wizbiz.saves



