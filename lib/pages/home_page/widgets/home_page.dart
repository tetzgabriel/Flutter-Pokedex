import 'package:flutter/material.dart';
import 'package:pokedex/consts/consts_app.dart';
import 'package:pokedex/pages/home_page/widgets/app_bar_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusBarWidth = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
        Positioned(
          top: -(240/3.3),
          left: screenWidth - (240 / 1.66),
          child: Opacity(
            child: Image.asset(ConstsApp.darkPokeball, width: 240, height: 240),
            opacity: 0.2,
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                  height: statusBarWidth,
                  color: Color.fromARGB(250, 255, 255, 255)
              ),
              AppBarHome(),
              Expanded(
                child: Container(
                    child: ListView(
                      children: <Widget>[
                        ListTile(title: Text('Pikachu')),
                        ListTile(title: Text('Charizard')),
                        ListTile(title: Text('Dragonite')),
                        ListTile(title: Text('Jigllypuf')),
                        ListTile(title: Text('Pikachu')),
                        ListTile(title: Text('Charizard')),
                        ListTile(title: Text('Dragonite')),
                        ListTile(title: Text('Jigllypuf')),
                        ListTile(title: Text('Pikachu')),
                        ListTile(title: Text('Charizard')),
                        ListTile(title: Text('Dragonite')),
                        ListTile(title: Text('Jigllypuf')),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
        ],),
    );
  }
}
