def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8],
]

def won?(board)
  position_taken?(board, index) == "X"
  position_taken?(board, index) == "O"
  **some kind of enumerable to check for win combination and XXX or OOO**
  if .include?(win_combination) && (board == [X,X,X] || board == [O,O,O])
    win_combination
  else
    nil
  end
end
