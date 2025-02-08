import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class HomePage extends StatefulComponent {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _clicked = false;

  void _handleClick() {
    setState(() {
      _clicked = true;
    });

    Future.delayed(Duration(milliseconds: 1900), () {
      Router.of(context).push('/second');
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'div',
      attributes: {
        'style':
            'display: flex; flex-direction: column; justify-content: center; align-items: center; height: 100vh;'
      },
      children: [
        DomComponent(
          tag: 'img',
          attributes: {
            'src': 'assets/pic2.jpg',
            'style':
                'width: 30%; max-width: 200px; border-radius: 10px; margin-bottom: 20px'
          },
        ),
        DomComponent(
          tag: 'p',
          attributes: {
            'style': 'font-size: 20px; font-weight: bold;',
          },
          child: Text('Let\'s talk about loving you for a bit...'),
        ),
        DomComponent(
          tag: 'button',
          attributes: {
            'class': 'button is-primary is-medium mt-5',
            'style':
                "font-family: Agu Display; padding: 10px 20px;   margin-bottom: 50px",
          },
          child: Text('First click the button sha...'),
          events: {
            'click': (_) => _handleClick(),
          },
        ),
        if (_clicked)
          DomComponent(
            tag: 'div',
            attributes: {
              'style': '''
                position: fixed;
                top: 50%;
                left: 50%;
                background-color: white;
                transform: translate(-50%, -50%);
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
              '''
            },
            children: [
              DomComponent(
                tag: 'img',
                attributes: {
                  'src': 'assets/romantic_us.jpg',
                  'style':
                      'width: 60%; max-width: 300px; border-radius: 10px; margin-bottom: 15px;'
                },
              ),
              DomComponent(
                tag: 'p',
                attributes: {
                  'style':
                      'color: #333; font-size: 20px; font-family: "Agu Display", sans-serif; font-weight: bold; margin-top: 0;',
                },
                child: Text(
                  'Every moment spent with you is gold, i relieve it in my head everyday! ❤️',
                ),
              ),
            ],
          ),
      ],
    );
  }
}
