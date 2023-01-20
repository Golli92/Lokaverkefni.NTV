import '';

class Room { // hérna er classi sem gefur herberginu sína eiginleika og er notaður í game_brain til að búa til herbergin
  Room(this.Description, this.Number, this.name, this.items, this.locked);

  String Description;
  int Number;
  String name;
  List<String> items;
  bool locked;

}
