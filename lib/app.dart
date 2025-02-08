import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:valentine_proposal/fourth_page.dart';
import 'package:valentine_proposal/homepage.dart';
import 'package:valentine_proposal/secondpage.dart';
import 'package:valentine_proposal/third_page.dart';

part 'app.g.dart';

@client
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Router(
      routes: [
        Route(path: '/', builder: (context, state) => HomePage()),
        Route(path: '/second', builder: (context, state) => SecondPage()),
        Route(path: '/third', builder: (context, state) => ThirdPage()),
        Route(path: '/fourth', builder: (context, state) => FourthPage()),
      ],
    );
  }
}
