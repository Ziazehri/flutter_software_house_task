
import 'package:app/screens/music_sub_screens/audio_song_scr.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
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


                const Text(
                  textAlign: TextAlign.center,
                  "Choose Your Vibe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
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
                          onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => AudioSongsScr(),)),
                          child: _buildSubjectCard2(
                            "assets/images/audio.png",
                            "Audio",
                          "Listen to songs or\nstories in audio \nformat",
                   
                            const Color(0xFFCAD8EF),
                          ),
                        ),
                        InkWell(
                          onTap: () {    },
                          child: _buildSubjectCard2(
                            "assets/images/video.png",
                            "Video",
                                "Watch animated\nsongs or music\nvideos",
                    
                            const Color(0xFFE5F4E4),
                          ),
                        ),
                        InkWell(
                             onTap: () {    },
                    
                          child: _buildSubjectCard2(
                            "assets/images/classical.png",
                            "Classical",
                              "Listen to calm and\nclassic pieces",
                    
                            const Color(0xFFFEEED1C4),
                          ),
                        ),
                        _buildSubjectCard2(
                          "assets/images/classi2.png",
                          "Learning Songs",
                          "Songs that teach\nalphabets,\nnumbers, etc.",
                          const Color(0xFFFFFFFF),
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
//
Widget _buildSubjectCard2(
  String imagePath,
  String title,
  String description,
  Color bgColor,
) {
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(14),
    ),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imagePath,
          height: 50,
          width: 50,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 12),
        Text(
          
          title,
          style: const TextStyle(
            color: AppColors.primaryA,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 0),
        Text(
          description,
          style: const TextStyle(
            color: AppColors.primaryA,

            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
}
