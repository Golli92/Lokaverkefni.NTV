import 'rooms.dart';

class Player { // hérna er classi sem heldur utan um items sem hann fær í inventory og hvaða herbergi leikmaðurinn er staddur
  Player({this.currentRoom});

  Room currentRoom;
  List inventory = [];
}