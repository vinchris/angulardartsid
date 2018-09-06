import 'dart:async';
import '../hero/hero.dart';
import '../hero/mock_heroes.dart';


class HeroService {

  /*
  * it defines Future, and update the HeroService 
  * with this Future-returning getAll() method
  ! property is a Future rather than a list of heroes
   */
  Future<List<Hero>> getAll() async => mockHeroes;
}