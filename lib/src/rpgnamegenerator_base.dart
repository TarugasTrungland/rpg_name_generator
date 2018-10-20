import 'elf.dart';
import 'ork.dart';
import 'human.dart';

class RpgNameGenerator {
  RpgNameGenerator() {}

  static getName({String race, String genre}) {
    switch (race.toLowerCase()) {
      case 'human':
        if (genre == 'male') {
          Human human = new Human();
          return human.getHumanName();
        } else {
          Human human = new Human(isMale: false);
          return human.getHumanName();
        }
        break;

      case 'ork':
      case 'orc':
        Ork _ork = new Ork();
        return _ork.getOrkName();
        break;

      case 'elf':
        Elf elf = Elf();
        return elf.getElfName();
        break;
    }
  }
}
