import 'dart:convert';
import 'dart:io';
import '../functions/game_brain.dart';
import '../functions/rooms.dart';

void main (){
  print('The game is starting');
  Game();

  print(ListOfRooms);

  bool needToSelectRoom = true;
  while(needToSelectRoom) {
    for(var room in ListOfRooms)
    {
      print("Room name: " + room.name);
    }

  }



}