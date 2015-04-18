require_relative 'class_level'
class CharacterClass
	attr_accessor :hit_dice, :gold 	
	
	def initialize()
	@level = 1
	@saves = { :fort_save => nil, :ref_save => nil, :will_save => nil }
	@hit_dice
	@base_attack_bonus
	@gold
	@feats
	@level_table		
	end
end

class WizardClass < CharacterClass
	def initialize()
		@saves = { :fort_save => nil, :ref_save => nil, :will_save => nil }
		@hit_dice = 8
		@base_attack_bonus
		@gold = 1000
	end
end

class WarriorClass < CharacterClass 
	def initialize()
		@saves = { :fort_save => 2, :ref_save => 0, :will_save => 0 }
		@hit_dice = 10
		@base_attack_bonus = 
		@gold = 1200
	end		
end

class RangerClass < CharacterClass
	def initialize()
		@saves = { :fort_save => 2, :ref_save => 2, :will_save => 0 }
		@hit_dice = 10
		@base_attack_bonus = 
		@gold = 850
	end		
end








