
import 'package:app/screens/music_sub_screens/audio_song_scr.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card2.dart';
import 'package:app/widgets/subject_card_3.dart';
import 'package:flutter/material.dart';

class MusicScr extends StatelessWidget {
  const MusicScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const CustomHeader2(),


                  RichText(
                          
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Choose ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Your ",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: "Vibe",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
                const SizedBox(height: 10),

                const Text(
                  textAlign: TextAlign.center,
                  "Choose your favorite way to listen — \nAudio, Video & More.",
                  style: TextStyle(
                    color: AppColors.secondaryC,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  "assets/images/baja.png",
                  height: 160,
                  width: 350,
                  fit: BoxFit.cover,
                ),

                                const SizedBox(height: 30),


                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      physics: const NeverScrollableScrollPhysics(),
                  children: [
  InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AudioSongsScr()),
    ),
    child: const SubjectCard3(
      imagePath: "assets/images/audio.png",
      title: "Audio",
      description: "Listen to songs or\nstories in audio \nformat",
      bgColor: Color(0xFFCAD8EF),
    ),
  ),
  InkWell(
    onTap: () {
      // Add navigation or action here
    },
    child: const SubjectCard3(
      imagePath: "assets/images/video.png",
      title: "Video",
      description: "Watch animated\nsongs or music\nvideos",
      bgColor: Color(0xFFE5F4E4),
    ),
  ),
  InkWell(
    onTap: () {
      // Add navigation or action here
    },
    child: const SubjectCard3(
      imagePath: "assets/images/classical.png",
      title: "Classical",
      description: "Listen to calm and\nclassic pieces",
      bgColor: Color(0xfffeeed1c4),
    ),
  ),
  const SubjectCard3(
    imagePath: "assets/images/classi2.png",
    title: "Learning Songs",
    description: "Songs that teach\nalphabets,\nnumbers, etc.",
    bgColor: Color(0xFFFFFFFF),
  ),
],


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
