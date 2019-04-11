#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 index = user_input.to_i - 1
 #index
end

def valid_move?(board, index)
  def position_taken?(array, position)
    if array[position] == " " || array[position] == "" || array[position] == nil
       return false
    else
       return true
    end
  end
  
  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end
  
  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end  
end


def move(board, index, value = "X")
  board[index] = value
  board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input =gets.strip
  index = input_to_index(user_input)

  valid_number =  valid_move?(board,index)
  
  if valid_number == true
   move(board, index, "X")
   display_board(board)
  else
    turn(board)
     puts "input a valid number"
 end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

#def position_taken?(board, index)
#  if (board[index] == " " || board[index] == "" || board[index]==nil)
#   return false
# else #(board[index] == "X" ||  board[index] == "O")
#   return true
  
# end
#end
