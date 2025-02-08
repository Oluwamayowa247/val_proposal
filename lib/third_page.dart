import 'package:jaspr/jaspr.dart';
import 'package:jaspr/server.dart';
import 'package:jaspr_router/jaspr_router.dart';

class ThirdPage extends StatefulComponent {
  @override
  State<StatefulComponent> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'div', children: [
      DomComponent(
        tag: 'p',
        attributes: {
          'style':
              'display: flex; flex-direction: column; justify-content: center; align-items: center; height: 100vh;'
        },
        children: [
          DomComponent(
            tag: 'img',
            attributes: {
              'src': 'assets/pic3.jpg',
              'style': '''
            width: 50%; 
            max-width: 300px;
            border-radius: 10px;
            margin-top: -30px;
          '''
            },
          ),
          DomComponent(
            tag: 'img2',
            attributes: {
              'style': '''
            font-size: 20px; 
            font-weight: bold; 
            margin-bottom: 5px;
            text-align: center;
          ''',
            },
            child: Text(
                'Because sometimes he dey do you like make you kill me...'),
          ),
          DomComponent(
            tag: 'button',
            events: {
              'click': (_) {
                Router.of(context).push('/fourth');
              },
            },
            attributes: {
              'class': 'button is-primary is-large mt-5',
              'style': '''
            font-family: Agu Display;
            padding: 10px 20px;
            margin-bottom: 80px;
            text-align: center;
          ''',
            },
            child: Text('One last click i promise...'),
          )
        ],
      )
    ]);
  }
}
