import 'dart:math';

import 'package:rpgnamegenerator/src/character.dart';

class Ork implements Character {
  final vowels = ['a', 'o', 'u', 'oo', 'ou', 'au'];
  final consonants = [
    'p',
    'b',
    'm',
    'r',
    'j',
    'sh',
    "'",
    's',
    'ss',
    'gz',
    'rr',
    'k',
    'gh',
    'kr',
    'tt',
    'kt',
    'rk',
  ];

  Random rnd = new Random();
  String getName({bool isMale = true}) {
    var name = '';
    if (isMale) {
      name += 'o';
    } else {
      name = 'u';
    }

    return name +
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
