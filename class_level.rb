class ClassLevel
	attr_accessor :level_table
	def initialize()
		@level_table
	end		
end

class FighterLevel < ClassLevel
	def initialize()
		@level_table = { :level_1 => {:base_attack_bonus => 1, :saves => { :fort_save => 2, :ref_save => 0, :will_save => 0 }, :special => "bonus feat"},

					 :level_2 => {:base_attack_bonus => 2, :saves => { :fort_save => 3, :ref_save => 0, :will_save => 0 }, :special => ["bonus feat","bravery+1"] },
				 
					 :level_3 => {:base_attack_bonus => 3, :saves => { :fort_save => 3, :ref_save => 1, :will_save => 1 }, :special => "armor training 1"}, 
			 
					 :level_4 => {:base_attack_bonus => 4, :saves => { :fort_save => 4, :ref_save => 1, :will_save => 1 }, :special => "bonus feat"}, 

					 :level_5 => {:base_attack_bonus => 5, :saves => { :fort_save => 4, :ref_save => 1, :will_save => 1 }, :special => "weapon training 1" },

					 :level_6 => {:base_attack_bonus => 6, :saves => { :fort_save => 5, :ref_save => 2, :will_save => 2 }, :special => ["bonus feat","bravery+2"] },
					 
					 :level_7 => {:base_attack_bonus => 7, :saves => { :fort_save => 5, :ref_save => 2, :will_save => 2 }, :special => "armor training 2" },
					 
					 :level_8 => {:base_attack_bonus => 8, :saves => { :fort_save => 6, :ref_save => 2, :will_save => 2 }, :special => "bonus feat" },
			 
					 :level_9 => {:base_attack_bonus => 9, :saves => { :fort_save => 6, :ref_save => 3, :will_save => 3 }, :special => "weapon training 2" },
					 
					 :level_10 => {:base_attack_bonus => 10, :saves => { :fort_save => 7, :ref_save => 3, :will_save => 3 }, :special => ["bonus feat","bravery+3"] },
					 
					 :level_11 => {:base_attack_bonus => 11, :saves => { :fort_save => 7, :ref_save => 3, :will_save => 3 }, :special => "armor training 3"},
					 
					 :level_12 => {:base_attack_bonus => 12, :saves => { :fort_save => 8, :ref_save => 4, :will_save => 4 }, :special => ["bonus feat","bravery+1"] },
					 
					 :level_13 => {:base_attack_bonus => 13, :saves => { :fort_save => 8, :ref_save => 4, :will_save => 4 }, :special => "weapon training 3"}, 
					 
					 :level_14 => {:base_attack_bonus => 14, :saves => { :fort_save => 9, :ref_save => 4, :will_save => 4 }, :special => ["bonus feat","bravery+3"]},
					 
					 :level_15 => {:base_attack_bonus => 15, :saves => { :fort_save => 9, :ref_save => 5, :will_save => 5 }, :special => "armor training 4" },
					 
					 :level_16 => {:base_attack_bonus => 16, :saves => { :fort_save => 10, :ref_save => 5, :will_save => 5 }, :special => "bonus feat" },
					 
					 :level_17 => {:base_attack_bonus => 17, :saves => { :fort_save => 10, :ref_save => 5, :will_save => 5 }, :special => "weapon training 4" },
					 
					 :level_18 => {:base_attack_bonus => 18, :saves => { :fort_save => 11, :ref_save => 6, :will_save => 6 }, :special => ["bonus feat","bravery+5"] },
					 
					 :level_19 => {:base_attack_bonus => 19, :saves => { :fort_save => 11, :ref_save => 6, :will_save => 6 }, :special => "armor mastery" },
					 
					 :level_20 => {:base_attack_bonus => 20, :saves => { :fort_save => 12, :ref_save => 6, :will_save => 6 }, :special => ["bonus feat", "weapon mastery"] }}

				
	end	
	
end

class RangerLevel < ClassLevel
	def initialize()
		@level_table
	end		
end

class WizardLevel < ClassLevel
	def initialize()
		@level_table
	end
end

susan_strong = FighterLevel.new
puts "susan level 1: #{susan_strong.level_table[:level_3][:base_attack_bonus]  }"



