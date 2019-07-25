class Player

	attr_accessor :name , :sign
	@@signs_array = ["x", "o"]

	def initialize (name)
		@name = name.to_s
		random = @@signs_array.sample
		@sign = random
		@@signs_array.delete(random)
		puts "JOUEUR CRÉÉ !"
	end

end
