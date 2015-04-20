require_relative 'class_level'
class CharacterClass
	attr_accessor  :level, :saves, :hit_dice, :gold, :feats,
				   :level_table,:base_attack_bonus,
				   :ref_save, :fort_save, :will_save 	
	
	def initialize()
	@level = 1
	@saves
	@ref_save, @fort_save, @will_save
	@hit_dice
	@gold
	@feats
	@level_table = Class_level.new
	@base_attack_bonus 	
	end
	
	def table
		return @level_table.level_table
	end

	def levelkey
		return "level_#{@level}".to_sym
	end
	
	def set_base_attack_bonus
		@base_attack_bonus = table[levelkey][:base_attack_bonus]
	end
	
	def set_saves
		@saves = table[levelkey][:saves]
		@ref_save = @saves[:ref_save], @fort_save = @saves[:fort_save]
		@will_save = @saves[:will_save]
	end

end

class WizardClass < CharacterClass
	def initialize()
		@level = 1
		@saves = { :fort_save => nil, :ref_save => nil, :will_save => nil }
		@hit_dice = 8
		@base_attack_bonus
		@gold = 1000
		@feats
		@level_table = WizardLevel.new
	end
end

class WarriorClass < CharacterClass 
	def initialize()
		@saves = { :fort_save => 2, :ref_save => 0, :will_save => 0 }
		@hit_dice = 10
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
		@base_attack_bonus 
		@gold = 850
		@feats
		@level_table = RangerLevel.new
	end		
end

puts "yo" 
wizbiz = WizardClass.new
wizbiz.set_saves
puts wizbiz.saves



