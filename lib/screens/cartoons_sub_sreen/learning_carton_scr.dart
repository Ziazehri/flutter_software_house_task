import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LearningCartonScr extends StatefulWidget {
  const LearningCartonScr({super.key});

  @override
  State<LearningCartonScr> createState() => _LearningCartonScrState();
}

class _LearningCartonScrState extends State<LearningCartonScr> {
  late YoutubePlayerController _controller;

  //  List of YouTube videos links
  final List<Map<String, String>> videos = [
    {
      "title": "Alphabet Adventure",
      "url": "https://www.youtube.com/watch?v=fN1Cyr0ZK9M",
      "thumb": "https://img.youtube.com/vi/fN1Cyr0ZK9M/0.jpg"
    },
    {
      "title": "Counting with Animals",
      "url": "https://www.youtube.com/watch?v=DR-cfDsHCGA",
      "thumb": "https://img.youtube.com/vi/DR-cfDsHCGA/0.jpg"
    },
    {
      "title": "Colors Song for Kids",
      "url": "https://www.youtube.com/watch?v=zxIpA5nF_LY",
      "thumb": "https://img.youtube.com/vi/zxIpA5nF_LY/0.jpg"
    },
       {
      "title": "Colors Song for Kids",
      "url": "https://www.youtube.com/watch?v=zxIpA5nF_LY",
      "thumb": "https://img.youtube.com/vi/zxIpA5nF_LY/0.jpg"
    },
       {
      "title": "Colors Song for Kids",
      "url": "https://www.youtube.com/watch?v=zxIpA5nF_LY",
      "thumb": "https://img.youtube.com/vi/zxIpA5nF_LY/0.jpg"
    },
  ];

  @override
  void initState() {
    super.initState();
    final firstVideoId =
        YoutubePlayer.convertUrlToId(videos[0]["url"]!) ?? "fN1Cyr0ZK9M";
    _controller = YoutubePlayerController(
      initialVideoId: firstVideoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  void _loadVideo(String url) {
    final videoId = YoutubePlayer.convertUrlToId(url);
    if (videoId != null) {
      _controller.load(videoId);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const CustomHeader2(isback: true,),
                const SizedBox(height: 10),

                   RichText(
                          
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Fun " ,
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Cartoons That \n",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: "Teach!",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
                const SizedBox(height: 8),

                const Text(
                  "Educational videos that turn lessons into adventures.\nTap and enjoy learning!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondaryC,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 25),

                // Main YouTube Player
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                    progressColors: const ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                //  List of videos
                Expanded(
                  child: ListView.builder(
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      final video = videos[index];
                      return GestureDetector(
                        onTap: () => _loadVideo(video["url"]!),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.2)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                child: Image.network(
                                  video["thumb"]!,
                                  height: 70,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  video["title"]!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Icon(Icons.play_circle_fill,
                                  color: Colors.amber, size: 28),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
//                 ],
//               ),

            ),
          ),
        ),
      ),
    );
  }
}