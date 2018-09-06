import 'package:angular/angular.dart';
import 'dart:async';

import 'src/hero/hero.dart';
import 'src/hero_component/hero_component.dart';
import 'src/hero_service/hero_service.dart';

// !- Root component -! //

@Component(
  selector: 'my-app',
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
)
class AppComponent implements OnInit {
  @override
  void ngOnInit() => _getHeroes();

  final title = 'Tour of Heroes';
  List<Hero> heroes;
  Hero selected;

  final HeroService _heroService;
  AppComponent(this._heroService);

  void onSelect(Hero hero) => selected = hero;

  /**
   * Dart’s async/await language feature lets you write asynchronous 
   * code that looks just like synchronous code
   * ! - The Future<void> return type is the asynchronous equivalent of void.
   */
  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }
}
