import 'dart:math';

class Elf {
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
    'cur'
    'cel',
    'dae',
    'dan',
    'de',
    'dil'
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
    'u'
    'wen'
  ];



  String getElfName() {
    Random random = new Random();
    String elfName ='';
    
    int len = (random.nextInt(2)+2);
    for(int i=0; i<len ;i++){
      int r = random.nextInt(elf_glyphs.length);
      elfName +=elf_glyphs[r];
      
    }
  
    return elfName;
  }
}
