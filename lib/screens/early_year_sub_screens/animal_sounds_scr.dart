import 'package:audioplayers/audioplayers.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class AnimalSoundsScr extends StatelessWidget {
  const AnimalSoundsScr({super.key});

  final List<Map<String, String>> animals = const [
    {"name": "Cat", "image": "assets/images/cat.jpg", "sound": "audios/cat.mp3"},
    {"name": "Dog", "image": "assets/images/dog.jpg", "sound": "audios/dog.mp3"},
    {"name": "Lion", "image": "assets/images/lion2.jpg", "sound": "audios/lion.mp3"},
    {"name": "Elephant", "image": "assets/images/elephant.jpg", "sound": "audios/elephant.mp3"},
    {"name": "Cow", "image": "assets/images/cow.jpg", "sound": "audios/cow.mp3"},
    {"name": "Sheep", "image": "assets/images/sheep.jpg", "sound": "audios/sheep.mp3"},
    {"name": "Monkey", "image": "assets/images/monkey.jpg", "sound": "audios/monkey.mp3"},
    {"name": "Duck", "image": "assets/images/duck.jpg", "sound": "audios/duck.mp3"},
    {"name": "Horse", "image": "assets/images/horse.jpg", "sound": "audios/horse.mp3"},
    {"name": "Rooster", "image": "assets/images/rooster.jpg", "sound": "audios/rooster.mp3"},
    {"name": "Frog", "image": "assets/images/frog.jpg", "sound": "audios/frog.mp3"},
    {"name": "Tiger", "image": "assets/images/tiger.jpg", "sound": "audios/tiger.mp3"},
    {"name": "Bear", "image": "assets/images/bear.jpg", "sound": "audios/bear.mp3"},
    {"name": "Owl", "image": "assets/images/owl.jpg", "sound": "audios/owl.mp3"},
    {"name": "Goat", "image": "assets/images/goat.jpg", "sound": "audios/goat.mp3"},
    {"name": "Snake", "image": "assets/images/snake.jpg", "sound": "audios/snake.mp3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomHeader2(isback: true,),
                const SizedBox(height: 10),
                const Text(
                  "Tap Animals to hear\n their Sounds",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // 🐾 Grid of animal sounds
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: animals.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, index) {
                    final animal = animals[index];
                    return InkWell(
                      onTap: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource(animal['sound']!));
                      },
                      child: _buildAnimalCard(
                        context,
                        animal['image']!,
                        animal['name']!,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimalCard(BuildContext context, String imagePath, String title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover, // Makes image fill the card
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black.withOpacity(0.3), // adds slight overlay for readability
      ),
      alignment: Alignment.bottomCenter,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

}
