import 'package:flutter/material.dart';
import 'package:tuneapp/Models/Tunes.dart';
import 'package:tuneapp/Screens/info.dart';
import 'package:tuneapp/components/itemcontainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<Tunes> tunelist = const [
    Tunes(
      Color(0xffed2c3b),
      "note1.wav",
    ),
    Tunes(
      Color(0xfff39430),
      "note2.wav",
    ),
    Tunes(
      Color(0xfffaf35d),
      "note3.wav",
    ),
    Tunes(
      Color(0xff3dc159),
      "note4.wav",
    ),
    Tunes(
      Color(0xff0ca586),
      "note5.wav",
    ),
    Tunes(
      Color(0xff0da0e7),
      "note6.wav",
    ),
    Tunes(
      Color(0xff9810a7),
      "note7.wav",
    ),
  ];

  final Tunes tunes1 = const Tunes(Color(0xff124578), "note1.wav");
  final Tunes tunes2 = const Tunes(Color(0xff124525), "note2.wav");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Info()));
                },
                icon: Icon(
                  Icons.info,
                  color: Colors.white,
                ))
          ],
          backgroundColor: const Color(0xff253138),
          title: Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        body: Column(children: getlist(tunelist)),
      ),
    );
  }

  List<ItemContainer> getlist(List<Tunes> tu) {
    List<ItemContainer> tlist = [];
    for (int i = 0; i < tu.length; i++) {
      tlist.add(ItemContainer(
        t: tu[i],
      ));
    }
    return tlist;
  }
}
