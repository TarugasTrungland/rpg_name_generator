import 'dart:math';

import 'package:rpgnamegenerator/src/character.dart';

class Human implements Character {
  bool isMale;
  Human({this.isMale = true});

  ///the first half of the vowels are the ending of all male names,
  ///the last half are the ending of female names
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
  String getName() {
    int pos = rnd.nextInt(10);
    String output = '';
    output += getSegment(consonants);
    output += getSegment(vowels);
    if (pos > 9) output += getSegment(consonants);
    if (pos > 7) output += getSegment(consonants);
    if (pos > 3) output += getSegment(vowels);
    if (pos > 8) output += getSegment(consonants);
    output += getSegment(consonants);
    if (isMale) {
      output += getSegment(vowels, length: (vowels.length ~/ 2));
    } else {
      output += getSegment(
        vowels,
        beforeLenght: (vowels.length ~/ 2),
        length: (vowels.length ~/ 2),
      );
    }
    return output;
  }

  String getSegment(List list, {int beforeLenght = 0, int length}) {
    String output;
    var listLength;
    if (length == null) {
      listLength = list.length;
    } else
      listLength = length;
    output = list[beforeLenght + rnd.nextInt(listLength)];
    return output;
  }
}
