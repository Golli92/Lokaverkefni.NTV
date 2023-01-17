import 'package:test/test.dart';
import 'player.dart';
import 'rooms.dart';
import 'dart:io';
import 'dart:convert';
import 'rooms.dart';


List<Room> getRooms(){

  Player Avatar = new Player();
  List<Room> ListOfRooms = new List<Room>();
  var currentRoom = Avatar.currentRoom;
  Room room4 = new Room(
    'there is massive bed in the middle of the room and pentagon carved in the selling above it and some satanic symbols all over the walls\n'
    'the room gives you bad wipe',
    4,
    'Bedroom',
    'you find a Big ass key in a drawer',
  );
  Room room1 = new Room(
    'you start waking up and find yourself alone in a long hallway\n'
    'You enter a long Hallway with 4 doors\n'
    'you see that the doors are marked with old bronze labels and you look at them all.',
    1,
    'Hallway',
    'items',
  );
  Room room2 = new Room(
    'you enter a typical old kitchen with dark brown wooden decor',
    2,
    'Kitchen',
    'items',
  );
  Room room3 = new Room(
    'you open the door to bright foier and see',
    3,
    'foier',
    'items',
  );
  Room room5 = new Room(
    'you walk in and see big sky window where the moonlight hit you and light the room up.\n'
    'bookshelves cover every wall filled with old books and dust. In the middle of the room is some old showcases\n.',
    5,
    'Libery',
    'gun, small knife, big knife',
  );

  ListOfRooms.add(room1);
  ListOfRooms.add(room2);
  ListOfRooms.add(room3);
  ListOfRooms.add(room4);
  ListOfRooms.add(room5);
  return ListOfRooms;
}
