import 'dart:math';

class Human {
  bool isMale;
  Human({this.isMale = true});

  ///the first half is the ending of all male names,
  ///the last half is the ending of female names
  final vowels = [
    'o',
    'o',
    'eo',
    'oe',
    'e',
    'e',
    'u',
    'u',
    'a',
    'a',
    'i',
    'i',
    'ae',
    'au',
  ];
  final consonants = [
    'w',
    'r',
    't',
    'y',
    'u',
    'p',
    's',
    'd',
    'f',
    'g',
    'h',
    'j',
    'k',
    'l',
    'z',
    'c',
    'v',
    'b',
    'n',
    'm'
  ];

  Random rnd = new Random();
  String getHumanName() {
    return getSegment(consonants) +
        getSegment(vowels) +
        getSegment(consonants) +
        getSegment(consonants) +
        getSegment(vowels) +
        getSegment(consonants);
  }

  String getSegment(List list) {
    Random random = new Random();
    String output;
    var listLength = list.length;
    output = list[random.nextInt(listLength)];
    return output;
  }
}
