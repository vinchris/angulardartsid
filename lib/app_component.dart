import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero/hero.dart';
import 'src/hero/mock_heroes.dart';

@Component(
  selector: 'my-app',
  directives: [coreDirectives,formDirectives],
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelect(Hero hero) => selected = hero;
}
