class TicTacToe
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
  ]
  
  def initialize(board = nil)
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   # board = Array.new(9, " ")
  end
  
 # def initialize(board = nil)
 #   @board = board || Array.new(9, " ")
 # end
 
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
 
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def input_to_index(string) 
    string.to_i - 1
  end
  
  def move(board, index, token = "X")
    board[index] = token
  end
  
  def postion_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false 
    else 
      return true 
    end
  end
 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
  
end