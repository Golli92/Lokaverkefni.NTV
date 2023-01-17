import 'package:test/test.dart';
import 'player.dart';
import 'rooms.dart';
import 'dart:io';
import 'dart:convert';
import 'rooms.dart';


void Game(){

  Player Avatar = new Player();
  List<Room> ListOfRooms = new List<Room>();
  var currentRoom = Avatar.currentRoom;
  var room1 = new Room(
    'you start waking up and find yourself alone in a dark room.\n '
    ' only small light from old and broken chandelier lihgt up the room.\n'
    'you look around and see some old cabinets and desk.\n',
    1,
    'Storage Room',
    'items'
  );
  var room2 = new Room(
    'You enter a long Hallway with xx doors\n '
    'you see that the doors are marked with old bronze labels and you look at them all.',
    2,
    'Hallway',
    'items',
  );
  var room3 = new Room(
    'you enter a typical old kitchen with dark brown wooden decor',
    3,
    'Kitchen',
    'items',
  );
  var room4 = new Room(
    'you open the door to bright foier and see',
    4,
    'foier',
    'items',
  );

  ListOfRooms.add(room1);
  ListOfRooms.add(room2);
  ListOfRooms.add(room3);
  ListOfRooms.add(room4);
}
