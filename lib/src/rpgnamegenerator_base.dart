import 'elf.dart';
import 'ork.dart';
import 'human.dart';

class RpgNameGenerator {
  RpgNameGenerator() {}
  static String getName(String race, String genre) {
    String name = _getName(race, genre);
    return '${name[0].toUpperCase()}${name.substring(1)}';
  }

  static String _getName(String race, String genre) {
    switch (race.toLowerCase()) {
      case 'human':
        if (genre == 'male') {
          Human human = new Human();
          return human.getName();
        } else {
          Human human = new Human(isMale: false);
          return human.getName();
        }
        break;

      case 'ork':
      case 'orc':
        if (genre == 'male') {
          Ork _ork = new Ork();
          return _ork.getName();
        } else {
          Ork _ork = new Ork();
          return _ork.getName(isMale: false);
        }
        break;

      case 'elf':
        if (genre == 'male') {
          Elf elf = Elf();
          return elf.getName();
        } else {
          Elf elf = Elf();
          return elf.getName(isMale: false);
        }
        break;
    }
  }
}
