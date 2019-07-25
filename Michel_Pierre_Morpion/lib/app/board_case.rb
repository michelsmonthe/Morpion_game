class BoardCase
	attr_accessor :value

	def initialize
		@value = " " #valeur vide
	end

	def case_x
		@value = "x"	#valeur du joueur1
	end

	def case_o
		@value = "o" #aleur du joueur2
	end

end
