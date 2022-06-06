import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('background/expansion_background.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            color: Colors.white.withOpacity(.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: const [
                    Text(
                      'WELCOME',
                      style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Pokemon Solid',
                          color: Colors.yellow,
                          height: 1),
                    ),
                    Text(
                      'WELCOME',
                      style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Pokemon Hollow',
                          color: Colors.blue,
                          height: 1),
                    ),
                  ],
                ),
                Stack(
                  children: const [
                    Text(
                      'TO',
                      style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Pokemon Solid',
                          color: Colors.yellow,
                          height: 1),
                    ),
                    Text(
                      'TO',
                      style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Pokemon Hollow',
                          color: Colors.blue,
                          height: 1),
                    ),
                  ],
                ),
                const Image(image: AssetImage('welcome_page/welcome_page.png')),
                Stack(
                  children: const [
                    Text(
                      'SHOP',
                      style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Pokemon Solid',
                          color: Colors.yellow,
                          height: 1),
                    ),
                    Text(
                      'SHOP',
                      style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Pokemon Hollow',
                          color: Colors.blue,
                          height: 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/',
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                  ),
                  child: const Text(
                    'Continue to Shop',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
