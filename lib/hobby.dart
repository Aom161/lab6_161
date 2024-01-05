class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby() {
    return [
      Hobby(name: "ดู YouTube", value: false),
      Hobby(name: "ดู tiktok", value: false),
      Hobby(name: "เล่นเกม", value: false),
      Hobby(name: "ฟังเพลง", value: false),
      Hobby(name: "นอน", value: false),
    ];
  }
}
