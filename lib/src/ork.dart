import 'dart:math';

class Ork {
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
  String getOrkName() {
    return getSegment(consonants) + getSegment(vowels) + getSegment(consonants);
  }

  String getSegment (List list){
    Random random = new Random();
    String output;
    var listLength = list.length;
    output = list[random.nextInt(listLength)];
    return output;
  }
}
