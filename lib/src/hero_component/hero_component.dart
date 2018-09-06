import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import '../hero/hero.dart';

// ! Hero component that manipulates the hero class object ! //
@Component(
  selector: 'my-hero',
  templateUrl: 'hero_component.html',
  directives: [coreDirectives, formDirectives],
)
class  HeroComponent {
  @Input()
  Hero hero;
}