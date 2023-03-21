import 'dart:io';

void main() {
  List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ];

  int turnCounter = 0;
  List<int> coordinates;
  String turnPlayer;

  print('Welcome');
  printBoard(board);
  print('\n____________________\n');
  while(!checkBoard(board)) {
    turnPlayer = ['X', 'O'][turnCounter%2];
    stdout.write('$turnPlayer\'s turn > ');
    coordinates = stdin.readLineSync().toString().split(' ').map((e) => int.parse(e)).toList();
    board[coordinates[0]][coordinates[1]] = turnPlayer;
    printBoard(board);
    print('\n____________________\n');
    turnCounter++;
  }
}

void printBoard(List<List<String>> board) {
  int boardSize = board.length;
  print(' ---' * boardSize);
  for (int i = 0; i < boardSize; i++) {
    print('| ' + board[i].join(' | ') + ' |');
    print(' ---' * boardSize);
  }
}

bool checkBoard(List<List<String>> board) {
  for (int i = 0; i < board.length; i++) {
    if (board[i][0] == board[i][1] && board[i][0] == board[i][2] && board[i][0] != ' ') {
      print('Player ${board[i][0]} has won.');
      return true;
    }
    for (int j = 0; j < board[i].length; j++) {
      if (board[0][j] == board[1][j] && board[0][j] == board[2][j] && board[0][j] != ' ') {
        print('Player ${board[0][j]} has won.');
        return true;
      }
    }
  }
  if ((board[0][0] == board[1][1] && board[0][0] == board[2][2] && board[0][0] != ' ') ||
      (board[0][2] == board[1][1] && board[0][2] == board[2][0] && board[0][2] != ' ')) {
    print('Player ${board[1][1]} has won.');
    return true;
  }
  return false;
}
