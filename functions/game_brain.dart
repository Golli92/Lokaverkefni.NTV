import 'package:test/test.dart';
import 'player.dart';
import 'rooms.dart';
import 'dart:io';
import 'dart:convert';
import 'rooms.dart';


List<Room> getRooms(){ // hérna er listinn af herbergjunum búinn til. hvert herbergi er með lýsingu, númer, nafn, hluti og hvort það er lokað eða opið. Classin Room gerir það kleift.

  List<Room> ListOfRooms = new List<Room>();

  Room room1 = new Room(
    'you start waking up and find yourself alone in a long hallway\n'
    'You enter a long Hallway with 5 doors\n'
    'you see that the doors are marked with old bronze labels and you look at them all and read the following.',
    1,
    'Hallway',
    ['super old candy'],
    false,
  );
  Room room2 = new Room(
    'you enter a typical old kitchen with dark brown wooden decor',
    2,
    'Kitchen',
    ["Small knife"],
    false,
  );
  Room room3 = new Room(
    'you open the door to bright room were a big man stands wearing pig mask\n'
    'what will you do\n',
    3,
    'Foier',
    [],
    true,
  );
  Room room5 = new Room(
    'you walk in and see big sky window where the moonlight hit you and light the room up.\n'
    'bookshelves cover every wall filled with old books and dust. In the middle of the room is some old showcases\n.',
    5,
    'Libery',
    ["Gun"],
    false,
  );
  Room room4 = new Room(
    'there is massive bed in the middle of the room and pentagon carved in the selling above it and some satanic symbols all over the walls\n'
     'the room gives you bad wipe',
    4,
    'Bedroom',
    ['key'],
    false,
  );
  Room room6 = new Room(
    'the room was filled with many old things like huge old clock, old beds and dressers. In the left corner was a stack of old moldy boxes',
    6,
    'Storage',
    ["Big knife"],
    false,
  );

  ListOfRooms.add(room1);
  ListOfRooms.add(room2);
  ListOfRooms.add(room3);
  ListOfRooms.add(room4);
  ListOfRooms.add(room5);
  ListOfRooms.add(room6);
  return ListOfRooms;
}
