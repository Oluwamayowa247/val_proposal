import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class SecondPage extends StatefulComponent {
  @override
  State<StatefulComponent> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'div',
      children: [
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
                'src': 'assets/pic1.jpg',
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
              child: Text('Your Babalawo strong ajeh!...'),
            ),
            DomComponent(
              tag: 'button',
              events: {
                'click': (_) {
                  Router.of(context).push('/third');
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
              child: Text('press button again joor...'),
            )
          ],
        ),
      ],
    );
  }
}
