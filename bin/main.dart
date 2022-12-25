import 'dart:convert';
import 'dart:io';
import '../functions/game_brain.dart';

void main (){
  print('Hello there do you like to play a short game? \n Yes\n No');
  String Input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  if(Input == 'yes') {
    print('ohh yes lets get started');//return room0; // hérna þarf að koma fram upphaf herbergið sem byrjað er í
    Game();
  } else {
    print('That is a shame hopefully you will play again soon');
  }


}