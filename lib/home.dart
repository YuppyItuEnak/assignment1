import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.white,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 7,
                child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child: ClipRRect(
                      child: Image.asset(
                        'images/pokemon.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/p1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/p2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/p3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/p4.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                    ],
                  )),
              Flexible(
                  flex: 8,
                  child: Column(
                    children: [
                      Flexible(
                          child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("POKEMON",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                      )),
                      Flexible(
                        
                          child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                              """Pokémon, electronic game series from Nintendo that debuted in Japan in February 1996 as Pokémon Green and Pokémon Red. The franchise later became wildly popular in the United States and around the world. 

The series, originally produced for the company’s Game Boy line of handheld consoles, was introduced in 1998 to the United States with two titles, known to fans as Red and Blue. In the games, players assume the role of Pokémon trainers, obtaining cartoon monsters and developing them to battle other Pokémon. Pokémon became one of the most successful video game franchises in the world, second only to Nintendo’s Super Mario Bros. The original Pokémon is a role-playing game based around building a small team of monsters to battle other monsters in a quest to become the best. Pokémon are divided into types, such as water and fire, each with different strengths. Battles between them can be likened to the simple hand game rock-paper-scissors. For example, to gain an advantage over a Pokémon that cannot beat an opponent’s Charizard character because of a weakness to fire, a player might substitute a water-based Pokémon. With experience, Pokémon grow stronger, gaining new abilities. By defeating Gym Leaders and obtaining Gym Badges, trainers garner acclaim. 
                              
Pikachu, a yellow mouselike creature, is the undisputed face of Pokémon and helped the series become a worldwide phenomenon. Pokémon inspired a cartoon series, movies, books, a toy line, sequels, spin-offs, a clothing line, and a popular trading-card game. In spite of a friendly interface and little violence, Pokémon has not been without controversy, however. In 1999 the parents of two nine-year-old boys sued Nintendo, stating that the Pokémon card game had caused the children to develop gambling problems and likening the trading-card craze to an illegal lottery. Religious groups that discount the theory of evolution also targeted Pokémon, for showing Pokémon evolving into new creatures.

Beginning in 2006, Pokémon video-game titles were produced exclusively for a new handheld console, the Nintendo DS, instead of the Game Boy, which was soon discontinued. In 2013 Pokémon X and Pokémon Y debuted on the Nintendo 3DS, which employed stereoscopic technology. The mobile application Pokémon GO was a blockbuster success upon its release in 2016. Developed by Niantic Labs, a former division of Google, the game used GPS data and the mobile device’s camera to create an “augmented reality” that allowed users to capture Pokémon from real-life locations.
                              
                              """, style: TextStyle(color: Colors.white),),
                        ),
                      )),
                    ],
                  )),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: _toggleFavorite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.white,
          child: _isFavorited
              ? Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              : Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
        ));
  }
}
