import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:may18_navigation/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstPage(),
      // routes: {
      //   '/second':(_) => SecondPage(data: 'data'),
      //   '/third':(_)=>ThirdPage(),
      // },
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'First Page',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                    '/second',
                    arguments: 'hello'
                );

              },
              child: Text('Go to Second')
          ),
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({
    Key? key,
    required this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'SecondPage',
              style: TextStyle(
                fontSize: 50
              ),
            ),
            Text(
                data
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('Back'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: (){
                final data =  Navigator.of(context).pushNamed('/third'
                //     MaterialPageRoute(
                //     builder: (context)=>SecondPage(data: 'Hello there from first page',))
                // );
                );
              },
              child: Text('Go to Third Page'),
            ),

          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Third Page',
                style: TextStyle(
                    fontSize: 50
                ),
              ),
              Text(
                  'Hello there from Second page'
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop('hello');
                },
                child: Text('Back'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>FirstPage())
                  );
                },
                child: Text('Return to First Page'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



