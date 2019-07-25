class Board
	attr_accessor :array_board_cases #, :count_turn

	def initialize
		@array_board_cases = []

		case1 = BoardCase.new
		case2 = BoardCase.new
		case3 = BoardCase.new
		case4 = BoardCase.new
		case5 = BoardCase.new
		case6 = BoardCase.new
		case7 = BoardCase.new
		case8 = BoardCase.new
		case9 = BoardCase.new

		 @array_board_cases = [[case1, case2, case3], [case4, case5, case6], [case7, case8, case9]]
		# A1=[0][0]	A2=[0][1]	A3=[0][2]	  B1=[1][0]	B2=[1][1]	B3=[1][2]	  C1=[2][0]	C2=[2][1] C3=[2][2]

	end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

     if array_board_cases[0][0].value != " " && array_board_cases[0][0].value == array_board_cases[0][1].value && array_board_cases[0][1].value == array_board_cases[0][2].value # A1=A2 && A2=A3
      return true
     elsif array_board_cases[1][0].value != " " && array_board_cases[1][0].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[1][2].value # B1=B2 && B2=A3
      return true
     elsif array_board_cases[2][0].value != " " && array_board_cases[2][0].value == array_board_cases[2][1].value && array_board_cases[2][1].value == array_board_cases[2][2].value # C1=C2 && C2=A3
      return true

     elsif array_board_cases[0][0].value != " " && array_board_cases[0][0].value == array_board_cases[1][0].value && array_board_cases[1][0].value == array_board_cases[2][0].value # A1=B1 && B1=C1
      return true
     elsif array_board_cases[0][1].value != " " && array_board_cases[0][1].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[2][1].value # A2=B2 && B2=C2
      return true
     elsif array_board_cases[0][2].value != " " && array_board_cases[0][2].value == array_board_cases[1][2].value && array_board_cases[1][2].value == array_board_cases[2][2].value # A3=B3 && B3=C3
      return true

     elsif array_board_cases[0][0].value != " " && array_board_cases[0][0].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[2][2].value # A1=B2 && B2=C3
      return true
     elsif array_board_cases[0][2].value != " " && array_board_cases[0][2].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[2][0].value # A3=B2 && B2=C1
      return true

  	 else return false

     end

  end

end
