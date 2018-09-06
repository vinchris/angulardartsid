import 'package:angular/angular.dart';

import 'src/hero/hero.dart';
import 'src/hero/mock_heroes.dart';
import 'src/hero_component/hero_component.dart';

// !- Root component -! //

@Component(
  selector: 'my-app',
  directives: [coreDirectives,HeroComponent],
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelect(Hero hero) => selected = hero;
}
