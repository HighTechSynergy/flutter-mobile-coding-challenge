class ExampleState {
  int number;

  static final Map<int, String> map = {
    0: "New Hampire",
    1: "New Jersey",
    2: "New Mexico",
    3: "New York",
  };

  String get numberString {
    return (map.containsKey(number) ? map[number] : "unknown");
  }

  ExampleState(this.number);

  String toString() {
    return ("$number $numberString");
  }

  static List<ExampleState> get list {
    return (map.keys.map((num) {
      return (ExampleState(num));
    })).toList();
  }
}
