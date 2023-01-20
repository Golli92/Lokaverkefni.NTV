import 'dart:convert';
import 'dart:io';
import '../functions/game_brain.dart';
import '../functions/player.dart';
import '../functions/rooms.dart';


void main (){
  List<Room> ListOfRooms = getRooms();
  // hér er ég buinn að búa til leikmann og hvar hann á að byrja.
  Player Avatar = new Player();
  Avatar.currentRoom = ListOfRooms.firstWhere((element) => element.Number == 1);

  // hérna kemur lýsingin í byrjunarherberginu.
  print('The game is starting');
  print('');
  print(ListOfRooms.first.Description);
  print('');

  // Hér koma upp herbergin sem eru númerúð og mun leikmaður velja eitt þeirra.
  bool needToSelectRoom = true;
  while(needToSelectRoom) {
    for (Room room in ListOfRooms.where((element) =>
    element.Number != Avatar.currentRoom.Number)) {
      print("Room name: " + room.name + ",[" + room.Number.toString()+']');
    }


    print('\nchoose a room');
    String InputRoom = stdin.readLineSync();
    print('you chose ' + InputRoom + ' you biaach\n');

  // Þar sem eitt herberig er lokað og þarfnast lykill þá er það lokað þar til að leikmaðurinn hefur lykillinn í inventoryinu sínu.
    if (ListOfRooms.any((element) => element.Number.toString() == InputRoom)) {
      for (Room room in ListOfRooms) {
        if (InputRoom == room.Number.toString()) {
          if (room.locked == false) {
            Avatar.currentRoom = room;
          } else {
            print('the door is locked');
            if (Avatar.inventory.any((item) => item == 'key')) { // codið sem opnar fyrir það að leifa leikmanni að ákveða hvort hann vilji nota lykilinn.
              print('you have a key');
              print('do you want to use it??\n'' press [1]');
              String inputkey = stdin.readLineSync();
              if (inputkey == 1.toString()) {
                Avatar.currentRoom = room;
              }
            } else {
              print('you need some kind of key to open the door'); // þetta kemur upp ef leikmaður er ekki með lykilinn á sér
            }
          }
        }
      }
      if (Avatar.currentRoom.Number != 3) { // hérna eru valmöguleikarnir fyrir öll hinn herbergin sem eru ekki lokuð
        print('you enter ' + Avatar.currentRoom.name + '\n' +
            Avatar.currentRoom.Description);
        needToSelectRoom = false;
        print('either\n' '[1]Choose a room\n' '[2]Search room'); // gefur leikmanni valkost um að leita í herbergi eða fara yfir í næsta herbergi
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
          print('');

          needToSelectRoom = true;
        }
      } else { // hér er það sem gerist þegar leikmaður nær að opna hurðina og fer eftir því hvað hann er með í inventory
          print(Avatar.currentRoom.Description);
          needToSelectRoom = false;
          print('do you have weapons??\n');
          if (Avatar.inventory.any((item) =>
          item == 'Gun' || item == 'Small knife' || item == 'Big knife')) {
            print('You have weapons');
            String inputWeapon = "";
            for (String item in Avatar.inventory) {
              print(item);
            }
            bool noWeapon = true;
            while(noWeapon) { // leikmaður getur fengið 3 vopn í leiknum og mun fá 3 missmunandi endir fyrir hvert þeirra.
            print ('Choose a weapon');
            String inputWeapon = stdin.readLineSync();
            if(inputWeapon.toLowerCase() == 'gun') {
              print('the gun doesnt seem to work\n '
                  'it must have been tamper with\n');
              print('He walk up to you and uses stun gun on you\n'
                  'you find yourself tied up in the air and slowly being lowered down to acid tank');
              print('            \n'
                  '           _________        \n'
                  '          |         |       \n'
                  '          |  R I P  |       \n'
                  '          |         |       \n'
                  '          |         |       \n'
                  '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n\n');
              needToSelectRoom = false;
              noWeapon = false;
            } else if(inputWeapon.toLowerCase() == 'big knife') {
              print('the big knife folds into it self\n its just a prob not even a real knife');
              print('He knock you out cold\n'
                  'you find yourself tied to a chair and realise you will be tortured to death');
              print('            \n'
                  '           _________        \n'
                  '          |         |       \n'
                  '          |  R I P  |       \n'
                  '          |         |       \n'
                  '          |         |       \n'
                  '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n\n');
              needToSelectRoom = false;
              noWeapon = false;
            } else if(inputWeapon.toLowerCase() == 'small knife') {
              print('you somehow manage to stab him in the eye\n'
                  'you make a run for it and manage to run through the door to freedom');
              print(
                  '                                    ______   ___          \n'
                      '  \\      /\\      / | |\\   | |\\   | |        |   \\        \n'
                      '   \\    /  \\    /  | | \\  | | \\  | |______  |__ /         \n'
                      '    \\  /    \\  /   | |  \\ | |  \\ | |        |  \\         \n'
                      '     \\/      \\/    | |   \\| |   \\| |______  |   \\        \n');
              needToSelectRoom = false;
              noWeapon = false;
            } else { // ef leikmaður skrifar vopnin vitlaust þá kemur þetta upp
              print('Error try to select the weapon again.');
              noWeapon = true;
            }
          }
          } else { // ef leikmaður var það heppin að finna lykilinn snemma og er án vopns þá gerist þetta.
            print('you have no weapons to fight the mystery man\n'
                'he takes up his bow and start counting down from 5\'');
            print('            \n'
                '           _________        \n'
                '          |         |       \n'
                '          |  R I P  |       \n'
                '          |         |       \n'
                '          |         |       \n'
                '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\n\n');
            needToSelectRoom = false;

          }
        }
      }
    }
  }

