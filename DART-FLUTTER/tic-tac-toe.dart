import 'dart:io';

List<List<String>> board = [
  [' ', ' ', ' '],
  [' ', ' ', ' '],
  [' ', ' ', ' '],
];
bool isXTurn = true;

void printBoard() {
  print("\t${board[0][0]}  | ${board[0][1]} | ${board[0][2]} ");
  print("\t---+---+---");
  print("\t${board[1][0]}  | ${board[1][1]} | ${board[1][2]} ");
  print("\t---+---+---");
  print("\t${board[2][0]}  | ${board[2][1]} | ${board[2][2]} ");
}

bool isFullBoard() {
  for (var row in board) {
    for (var cell in row) {
      if (cell == ' ') {
        return false;
      }
    }
  }
  return true;
}

void makeMove(String current_player) {
  while (!isFullBoard()) {
    print("\tIt's $current_player's turn!");
    print("\tEnter row (0-2): ");
    int row = int.parse(stdin.readLineSync()!);
    print("\tEnter column (0-2): ");
    int col = int.parse(stdin.readLineSync()!);
    if (row >= 0 && row < board.length && col >= 0 && col < board[0].length) {
      if (board[row][col] == ' ') {
        board[row][col] = current_player;
        break;
      } else {
        print("\tCell already occupied");
      }
    } else {
      print("\tPlease enter values within the board range.");
    }
  }
  if (isFullBoard()) {
    print("\tIt's a draw!");
    exit(0);
  }
  checkWinner(current_player);
  isXTurn = !isXTurn;
}

void checkWinner(String current_player) {
  // rows
  for (var row in board) {
    if ((row[0] == row[1]) &&
        (row[1] == row[2]) &&
        (row[2] == current_player)) {
      print("\t$current_player wins!");
      exit(0);
    }
  }
  // columns
  for (int col = 0; col < board.length; col++) {
    List<String> column = [];
    for (int row = 0; row < board.length; row++) {
      column.add(board[row][col]);
    }
    if ((column[0] == column[1]) &&
        column[1] == column[2] &&
        column[2] == current_player) {
      print("\t$current_player wins!");
      exit(0);
    }
  }
  //diagonals
  if ((board[0][0] == board[1][1]) &&
          (board[1][1] == board[2][2]) &&
          (board[2][2] == current_player) ||
      (board[2][0] == board[1][1]) &&
          (board[1][1] == board[0][2]) &&
          (board[0][2] == current_player)) {
    print("\t$current_player wins!");
    exit(0);
  }
}

void main() {
  print("\tTic Tac Toe");
  print("\t===========");
  printBoard();
  while (true) {
    makeMove(isXTurn ? 'X' : 'O');
    printBoard();
  }
}
