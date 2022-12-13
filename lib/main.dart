import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Testing layout before getting pokemons through API
final List<String> pokemons = <String>['Bulbassaur', 'Pikachu', 'Bayleef', 'Lapras', 'Charmander', 'Squirtle', 'Charmeleon' ,'Infernape', 'Mew'];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
        ),

        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: pokemons.length,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              color: Colors.amber[100],
              child: Center(
                child: Text('#$index, ${pokemons[index]}')
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 13.0,
            crossAxisSpacing: 13.0,
            childAspectRatio: 1/2
            ),
        ),
      ),
    );
  }
}