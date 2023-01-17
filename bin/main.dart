import 'dart:convert';
import 'dart:io';
import '../functions/game_brain.dart';
import '../functions/rooms.dart';

void main (){
  List<Room> ListOfRooms = getRooms();
  print('The game is starting');
  print('-----------------------------------------------------------');
  print(ListOfRooms.first.Description);


  //print(ListOfRooms);

  bool needToSelectRoom = true;
  while(needToSelectRoom) {
    for(Room room in ListOfRooms)
    {
      print("Room name: " + room.name);
    }
    stdin.readLineSync();

  }



}