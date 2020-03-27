import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/components/status_bar.dart';
import 'package:pokedex/consts/consts_app.dart';
import 'package:pokedex/models/pokeapi.dart';
import 'package:pokedex/pages/home_page/widgets/app_bar_home.dart';
import 'package:pokedex/stores/pokeapi_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokeApiStore pokeApiStore;

  @override
  void initState() {
    super.initState();

    pokeApiStore = PokeApiStore();
    pokeApiStore.fetchPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: -(240 / 3.3),
            left: screenWidth - (240 / 1.66),
            child: Opacity(
              child: Image.asset(
                  ConstsApp.darkPokeball, width: 240, height: 240),
              opacity: 0.2,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                StatusBar(),
                AppBarHome(),
                Expanded(
                  child: Container(
                      child: Observer(
                        name: 'ListaHomePage',
                        builder: (BuildContext context) {
                          PokeAPI _pokeApi = pokeApiStore.pokeAPI;

                          return (_pokeApi != null)
                              ? ListView.builder(
                                  itemCount: 150,
                                  itemBuilder: (context, index) {
                                    return ListTile(title: Text(_pokeApi.pokemon[index].name));
                                  },
                              )
                              : Center(child: CircularProgressIndicator(),);
                        },
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}