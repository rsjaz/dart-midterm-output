import 'dart:io'; 
import 'dart:math';

void main() {
  var papel = '\u270B';
  var gunting = '\u270C';
  var bato = '\u270A';

  print('Papel, Gunting, o Bato! What is your pick?');
  String input = stdin.readLineSync(); 
  
  var player = input.toLowerCase();

    if (player == 'papel') {
      print('\nYou have chosen papel $papel');
    } else if (player == 'gunting') {
      print('\nYou have chosen gunting $gunting');
    } else if (player == 'bato') {
      print('\nYou have chosen bato $bato');
    } else {
      print('\nInvalid input.');
      exit(0);
    }

  Random random = new Random();
    var list = ['papel','gunting','bato'];
  
    var pc = list[random.nextInt(list.length)];
  
    if (pc == 'papel') {
      print('The computer have chosen papel $papel');
    } else if (pc == 'gunting') {
      print('The computer have chosen gunting $gunting');
    } else {
      print('The computer have chosen bato $bato');
  }

  if (player == pc) { 
    print('Its a TIE.');
  } else if (player == 'papel' && pc == 'bato') {
    print('Congratulations, you WIN!');
  } else if (player == 'gunting' && pc == 'papel') {
    print('Congratulations, you WIN!');
  } else if (player == 'bato' && pc == 'gunting') {
    print('Congratulations, you WIN!');
  } else {
    print('Sorry, you LOSE!');
  }
}
