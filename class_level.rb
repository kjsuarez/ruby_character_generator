class ClassLevel
	attr_accessor :level_table, :test
	def initialize()
		@level_table
	end		
end

class FighterLevel < ClassLevel
	def initialize()
		@level_table = { :level_1 => {  :base_attack_bonus => 1, :saves => { :fort_save => 2, :ref_save => 0, :will_save => 0 }, :special => "bonus feat"},

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

class RangerLevel < ClassLevel  #saves and spells per day done
	def initialize()
		@level_table = { :level_1 => {:base_attack_bonus => 1, :saves => { :fort_save => 2, :ref_save => 2, :will_save => 0 }, :special => ["","",""], :spells_per_day => { :first=> nil, :second=>nil, :third=>nil, :fourth=>nil}},  #1

						 :level_2 => {:base_attack_bonus => 2, :saves => { :fort_save => 3, :ref_save => 3, :will_save => 0 }, :special => ["",""], :spells_per_day => { :first=> nil, :second=>nil, :third=>nil, :fourth=>nil} },		#2
					 
						 :level_3 => {:base_attack_bonus => 3, :saves => { :fort_save => 3, :ref_save => 3, :will_save => 1 }, :special => "", :spells_per_day => { :first=> nil, :second=>nil, :third=>nil, :fourth=>nil}}, 			#3
				 
						 :level_4 => {:base_attack_bonus => 4, :saves => { :fort_save => 4, :ref_save => 4, :will_save => 1 }, :special => "", :spells_per_day => { :first=> 0, :second=>nil, :third=>nil, :fourth=>nil}}, 			#4

						 :level_5 => {:base_attack_bonus => 5, :saves => { :fort_save => 4, :ref_save => 4, :will_save => 1 }, :special => "", :spells_per_day => { :first=> 1, :second=>nil, :third=>nil, :fourth=>nil} },	#5

						 :level_6 => {:base_attack_bonus => 6, :saves => { :fort_save => 5, :ref_save => 5, :will_save => 2 }, :special => ["",""], :spells_per_day => { :first=> 1, :second=>nil, :third=>nil, :fourth=>nil} },#6
						 
						 :level_7 => {:base_attack_bonus => 7, :saves => { :fort_save => 5, :ref_save => 5, :will_save => 2 }, :special => "", :spells_per_day => { :first=> 1, :second=>0, :third=>nil, :fourth=>nil} }, #7
						 
						 :level_8 => {:base_attack_bonus => 8, :saves => { :fort_save => 6, :ref_save => 6, :will_save => 2 }, :special => "", :spells_per_day => { :first=> 1, :second=>1, :third=>nil, :fourth=>nil} },	#8
				 
						 :level_9 => {:base_attack_bonus => 9, :saves => { :fort_save => 6, :ref_save => 6, :will_save => 3 }, :special => "", :spells_per_day => { :first=> 2, :second=>1, :third=>nil, :fourth=>nil} }, #9
						 
						 :level_10 => {:base_attack_bonus => 10, :saves => { :fort_save => 7, :ref_save => 7, :will_save => 3 }, :special => ["",""], :spells_per_day => { :first=> 2, :second=>1, :third=>nil, :fourth=>nil} },#10
						 
						 :level_11 => {:base_attack_bonus => 11, :saves => { :fort_save => 7, :ref_save => 7, :will_save => 3 }, :special => "", :spells_per_day => { :first=> 2, :second=>1, :third=>0, :fourth=>nil}},#11
						 
						 :level_12 => {:base_attack_bonus => 12, :saves => { :fort_save => 8, :ref_save => 8, :will_save => 4 }, :special => ["","", :spells_per_day => { :first=> 2, :second=>2, :third=>1, :fourth=>nil}] },#12
						 
						 :level_13 => {:base_attack_bonus => 13, :saves => { :fort_save => 8, :ref_save => 8, :will_save => 4 }, :special => "", :spells_per_day => {  :first=> 3, :second=>2, :third=>1, :fourth=>0}}, #13
						 
						 :level_14 => {:base_attack_bonus => 14, :saves => { :fort_save => 9, :ref_save => 9, :will_save => 4 }, :special => ["",""], :spells_per_day => { :first=> 3, :second=>2, :third=>1, :fourth=>1}},
						 
						 :level_15 => {:base_attack_bonus => 15, :saves => { :fort_save => 9, :ref_save => 9, :will_save => 5 }, :special => "", :spells_per_day => { :first=> 3, :second=>2, :third=>2, :fourth=>1} },
						 
						 :level_16 => {:base_attack_bonus => 16, :saves => { :fort_save => 10, :ref_save => 10, :will_save => 5 }, :special => "", :spells_per_day => { :first=> 3, :second=>3, :third=>2, :fourth=>1} },
						 
						 :level_17 => {:base_attack_bonus => 17, :saves => { :fort_save => 10, :ref_save => 10, :will_save => 5 }, :special => "", :spells_per_day => { :first=> 4, :second=>3, :third=>2, :fourth=>1} },
						 
						 :level_18 => {:base_attack_bonus => 18, :saves => { :fort_save => 11, :ref_save => 11, :will_save => 6 }, :special => ["",""], :spells_per_day => { :first=> 4, :second=>3, :third=>2, :fourth=>2} },
						 
						 :level_19 => {:base_attack_bonus => 19, :saves => { :fort_save => 11, :ref_save => 11, :will_save => 6 }, :special => "", :spells_per_day => { :first=> 4, :second=>3, :third=>3, :fourth=>2} },
						 
						 :level_20 => {:base_attack_bonus => 20, :saves => { :fort_save => 12, :ref_save => 12, :will_save => 6 }, :special => ["", ""], :spells_per_day => { :first=> 4, :second=>4, :third=>3, :fourth=>3} }}

	end		
end

class WizardLevel < ClassLevel
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
						 
						 :level_19 => {:base_attack_bonus => 20, :saves => { :fort_save => 12, :ref_save => 6, :will_save => 6 }, :special => ["bonus feat", "weapon mastery"] }}

	end
end
=begin
	susan_strong = FighterLevel.new
x = 12
x = "level_#{x}".to_sym
x = susan_strong.level_table[x][:base_attack_bonus]
puts "susan level 1: #{ @test }"

=end




