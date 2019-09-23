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
  
    def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
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
  
  def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)   #if index is between 0 and 8 aka 1-9 and the position taken method does not return true (i.e the position is not taken), then it is a valid move
      return true
    end 
  end
  
end