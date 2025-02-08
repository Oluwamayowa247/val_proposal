import 'package:jaspr/jaspr.dart';
import 'package:jaspr/server.dart';
//import 'package:jaspr_router/jaspr_router.dart';

class FourthPage extends StatefulComponent {
  @override
  State<StatefulComponent> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'div', children: [
      DomComponent(
        tag: 'div',
        attributes: {
          'style': '''
            display: flex; 
            flex-direction: column; 
            justify-content: center; 
            align-items: center; 
            height: 100vh;
            padding: 20px;
            text-align: center;
          '''
        },
        children: [
          DomComponent(
            tag: 'img',
            attributes: {
              'src': 'assets/pic5.jpg',
              'style': '''
                width: 40%; 
                max-width: 250px;
                border-radius: 10px;
                margin-top: -20px;
              '''
            },
          ),
          DomComponent(
            tag: 'p',
            attributes: {
              'style': '''
                font-size: 16px; 
                font-weight: normal; 
                color: #333;
                line-height: 1.6;
                margin: 15px 0 30px 0;
                padding: 10px;
                max-width: 90%;
                background: rgba(255, 255, 255, 0.8);
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
              ''',
            },
            child: Text('''
              Some people don’t know what they have,  
              but I do.  

              Aramide, you are a queen—bold, brilliant, and beautiful.  
              Your strength, your drive, the way you wake up every day  
              striving to be better—it’s breathtaking.  

              I should probably ask you formally to be my Val,  
              but let’s be real,  
              I am lonely as hell,  
              so you're already mine.  

              And yes, this is me,  
              officially imposing you to be my Val. ❤️

              Happy Valentine’s Day in advance my love (and of course valetine came early for you).
              '''),
          ),
        ],
      ),
    ]);
  }
}
