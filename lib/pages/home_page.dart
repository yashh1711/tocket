import 'package:flutter/material.dart';
import 'package:tocket/classes/item_class.dart';
import 'package:tocket/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tocket'),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                title: 'Rocket',
                description: 'Fly me to the moooooon',
                imagePath: 'assets/images/rocket.png',
              ),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Traveller',
                      description: 'Around the Wooooooorld',
                      imagePath: 'assets/images/travel.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Astronaut',
                      description: 'Reach for the staaaaars',
                      imagePath: 'assets/images/space.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Developer',
                description: 'Debug Faaaaaast',
                imagePath: 'assets/images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
