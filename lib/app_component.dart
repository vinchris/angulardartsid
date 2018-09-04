import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  directives: [formDirectives],
  template: '''
  <h1>{{title}}</h1>
  <div>
  <label>name: </label>
  <input [(ngModel)]="hero.name" placeholder="name">
</div>
  <div><label>id: </label>{{hero.id}}</div>
  <div><label>name: </label>{{hero.name}}</div>
''',
)
class AppComponent {
  final title = 'Tour of Heroes';
  Hero hero = Hero(1, 'Windstorm');
}
