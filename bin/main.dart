import 'dart:convert';
import 'dart:io';
import '../functions/game_brain.dart';
import '../functions/player.dart';
import '../functions/rooms.dart';


void main (){
  List<Room> ListOfRooms = getRooms();

  Player Avatar = new Player();
  Avatar.currentRoom = ListOfRooms.firstWhere((element) => element.Number == 1);


  print('The game is starting');
  print('-----------------------------------------------------------');
  print(ListOfRooms.first.Description);
  print('-----------------------------------------------------------');


  //print(ListOfRooms);

  bool needToSelectRoom = true;
  while(needToSelectRoom) {
    for (Room room in ListOfRooms.where((element) =>
    element.Number != Avatar.currentRoom.Number)) {
      print("Room name: " + room.name + ", room number: " +
          room.Number.toString());
    }

    print('-----------------------------------------------------------');
    print('choose a room');
    String InputRoom = stdin.readLineSync();
    print('you chose ' + InputRoom + ' you biaach');

    if (ListOfRooms.any((element) => element.Number.toString() == InputRoom)) {
      for (Room room in ListOfRooms) {
        if (InputRoom == room.Number.toString()) {
          if (room.locked == false) {
            Avatar.currentRoom = room;
          } else {
            print('the door is locked');
            if (Avatar.inventory.any((item) => item == 'key')) {
              print('you have a key');
              print('do you want to use it??\n'' press [1]');
              String inputkey = stdin.readLineSync();
              if (inputkey == 1.toString()) {
                Avatar.currentRoom = room;
              }
            } else {
              print('you need some kind of key to open the door');
            }
          }
        }
      }
      if (Avatar.currentRoom.Number != 3) {
        print('you enter ' + Avatar.currentRoom.name + '\n' +
            Avatar.currentRoom.Description);
        needToSelectRoom = false;
        print('either\n' '[1]Choose a room\n' '[2]Search room');
        String userinput = stdin.readLineSync();
        if (userinput == 1.toString()) {
          needToSelectRoom = true;
        } else if (userinput == 2.toString()) {
          var items = Avatar.currentRoom.items;
          if (items.length == 0) {
            print('no usable items found');
          } else {
            for (String item in items) {
              print('you found ' + item);
              Avatar.inventory.add(item);
            }
          }
          Avatar.currentRoom.items = [];
          print('-----------------------------------------------------------');

          needToSelectRoom = true;
        }
      } else {
        print('anal');
      }
    }
  }
}
