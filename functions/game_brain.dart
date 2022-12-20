import 'package:test/test.dart';
import 'rooms.dart';
import 'dart:io';
import 'dart:convert';
import 'rooms.dart';

void startGame(){

  Player Avatar = new Player();
  List<Room> ListOfRooms = new List<Room>();
  var room1 = new Room{
    Number = 1;
    name = 'Storage room';
    Description = 'you start waking up and find yourself alone in a dark room.\n '
    ' only small light from old and broken chandelier lihgt up the room.\n'
    'you look around and see some old cabinets and desk.\n';
  };
  var room2 = new Room{
    Number = 2;
    name = 'Hallway';
    Description = 'You enter a long Hallway with xx doors\n '
        'you see that the doors are marked with old bronze labels and you look at them all.';
  };
  var room3 = new Room{
    Number = 3;
    name = 'Kitchen';
    Description = 'you enter a typical old kitchen with dark brown wooden decor';

  }
  ListOfRooms.add(room1);
  ListOfRooms.add(room2);
  ListOfRooms.add(room3);
}
