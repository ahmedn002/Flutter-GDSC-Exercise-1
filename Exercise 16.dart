import 'dart:io';

void main() {
  //  --- --- ---
  // |   |   |   |
  //  --- --- ---
  // |   |   |   |
  //  --- --- ---
  // |   |   |   |
  //  --- --- ---

  stdout.write('Enter the size of the board.\n> ');
  final int boardSize = int.parse(stdin.readLineSync().toString());

  print(' ---' * boardSize);
  for (int i = 0; i < boardSize; i++) {
    print('|   ' * boardSize + '|');
    print(' ---' * boardSize);
  }
}