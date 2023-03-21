import 'dart:io';

void main() {
  List<List<String>> board = [
    ['0', '0', '0'],
    ['0', '0', '0'],
    ['0', '0', '0']
  ];
  
  while(true) {
    printBoard(board);
    stdout.write('Choose a coordinate to place X (0 based indexing) in the form of: y x\n> ');
    List<int> coordinates = stdin.readLineSync().toString().split(' ').map((e) => int.parse(e)).toList();
    board[coordinates[0]][coordinates[1]] = 'X';
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
