import 'elf.dart';
import 'human.dart';
import 'ork.dart';

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
          Human human = Human();
          return human.getName();
        } else {
          Human human = Human(isMale: false);
          return human.getName();
        }
        break;

      case 'ork':
      case 'orc':
        if (genre == 'male') {
          Ork _ork = Ork();
          return _ork.getName();
        } else {
          Ork _ork = Ork();
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

      default:
        return 'Pepe';
    }
  }
}
