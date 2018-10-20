import 'elf.dart';
import 'ork.dart';
import 'human.dart';

class RpgNameGenerator {
  
  RpgNameGenerator() {}

  static getName(String raceName) {
    switch (raceName.toLowerCase()) {
      case 'human':
      Human human = new Human();
      return human.getHumanName();
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
