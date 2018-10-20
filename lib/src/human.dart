import 'dart:math';

class Human {
  final vowels = [
    'a',
    'o',
    'u',
    'e',
    'i',
    'a',
    'o',
    'u',
    'e',
    'i',
    'eo',
    'ae',
    'au'
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
