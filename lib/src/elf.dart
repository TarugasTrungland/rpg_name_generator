import 'dart:math';

import 'package:rpgnamegenerator/src/character.dart';

class Elf implements Character {
  final elf_glyphs = [
    'a',
    'an',
    'am',
    'ang',
    'be',
    'brim',
    'brí',
    'bor',
    'car',
    'cur',
    'cel',
    'dae',
    'dan',
    'de',
    'dil',
    'dír',
    'dui',
    'eä',
    'el',
    'fin',
    'grod',
    'gol',
    'gon',
    'i',
    'le',
    'leg',
    'li',
    'lin',
    'na',
    'ne',
    'rië',
    'ras',
    're',
    'rod',
    'ron',
    'u',
    'wen'
  ];

  final endElfFemaleNames = <String>[
    'el',
    'en',
    'al',
    'an',
  ];
  final endElfMaleNames = <String>[
    'or',
    'ond',
    'cen',
    'go',
  ];

  @override
  String getName({bool isMale = true}) {
    Random random = Random();
    String elfName = '';

    int len = (random.nextInt(2) + 1);
    for (int i = 0; i < len; i++) {
      int r = random.nextInt(elf_glyphs.length);
      elfName += elf_glyphs[r];

      if (isMale) {
        elfName += endElfMaleNames[random.nextInt(endElfMaleNames.length)];
      } else {
        elfName += endElfFemaleNames[random.nextInt(endElfFemaleNames.length)];
      }
    }
    return elfName;
  }
}
