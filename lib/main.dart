import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeCode assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 30),
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn.searchenginejournal.com/wp-content/uploads/2022/04/reverse-image-search-627b7e49986b0-sej-760x400.png'                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(90.0)),
                    border: Border.all(
                      color: const Color.fromRGBO(189, 255, 215, 0.9),
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              const Text(
                'Abdullah Ahmed',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 64, top: 15, right: 64),
                child: Center(
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              myWidget(
                text: 'LinkedIn',
                color: const Color.fromRGBO(243, 242, 255, 1),
                icon: const FaIcon(FontAwesomeIcons.linkedin),
              ),
              myWidget(
                text: 'facebook',
                color: const Color.fromRGBO(199, 228, 255, 1),
                icon: const FaIcon(FontAwesomeIcons.facebook),
              ),
              myWidget(
                text: 'Instagram',
                color: const Color.fromRGBO(255, 242, 242, 1),
                icon: const FaIcon(FontAwesomeIcons.instagram),
              ),
              myWidget(
                  text: 'MyWebsite',
                  color: const Color.fromRGBO(255, 251, 242, 1),
                  icon: const FaIcon(FontAwesomeIcons.firefoxBrowser)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: .0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myContainer(
                      icon: Icons.call,
                      color: const Color.fromRGBO(243, 242, 255, 1),
                    ),
                    myContainer(
                      icon: Icons.mail,
                      color: const Color.fromRGBO(199, 228, 255, 1),
                    ),
                    myContainer(
                      icon: Icons.message,
                      color: const Color.fromRGBO(255, 251, 242, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myWidget(
      {required String text, required Color color, required Widget icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        height: 54,
        width: 299,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Text(
                text,
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget myContainer({required IconData icon, required Color color}) {
  return Container(
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      color: color,
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    width: 40,
    height: 40,
    child: Center(
      child: Icon(icon),
    ),
  );
}
