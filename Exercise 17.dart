void main() {
  List<List<int>> board = [
    [1, 2, 0],
    [2, 1, 0],
    [2, 1, 1]
  ];

  for (int i = 0; i < board.length; i++) {
    if (board[i][0] == board[i][1] && board[i][0] == board[i][2] && board[i][0] != 0) {
      print('Player ${board[i][0]} has won.');
    }
    for (int j = 0; j < board[i].length; j++) {
      if (board[0][j] == board[1][j] && board[0][j] == board[2][j] && board[0][j] != 0) {
        print('Player ${board[0][j]} has won.');
      }
    }
  }
  if ((board[0][0] == board[1][1] && board[0][0] == board[2][2] && board[0][0] != 0) ||
      (board[0][2] == board[1][1] && board[0][2] == board[2][0] && board[0][2] !=0)) {
    print('Player ${board[1][1]} has won.');
  }
}

