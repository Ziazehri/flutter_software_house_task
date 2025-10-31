import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/custom_video_player.dart';
import 'package:app/widgets/video_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CartnAdventureScr extends StatefulWidget {
  const CartnAdventureScr({super.key});

  @override
  State<CartnAdventureScr> createState() => _CartnAdventureScrState();
}

class _CartnAdventureScrState extends State<CartnAdventureScr> {
  VideoPlayerController? _controller;

  // 🌟 Local moral story videos
  final List<Map<String, String>> videos = [

     {
      "title": "The Honest Woodcutter",
      "path": "assets/videos/monkey_funny.mp4",
      "thumb": "assets/images/banana_c.png",
    },
    {
      "title": "The Boy Who Cried Wolf",
      "path": "assets/videos/cat_dog_funny.mp4",
      "thumb": "assets/images/cat_dog.png",
    },
    {
      "title": "The Lion and The Mouse",
      "path": "assets/videos/penguin_dance.mp4",
      "thumb": "assets/images/panguin.png",
    },
  ];

  String? _currentVideoPath;

  @override
  void initState() {
    super.initState();
    _loadVideo(videos[0]["path"]!);
  }

  Future<void> _loadVideo(String assetPath) async {
    if (_controller != null) {
      await _controller!.pause();
      await _controller!.dispose();
    }

    _controller = VideoPlayerController.asset(assetPath)
      ..initialize().then((_) {
        setState(() {
          _currentVideoPath = assetPath;
        });
        _controller!.play();
      });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const CustomHeader2(),
                const SizedBox(height: 10),

                // Title
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Inspiring ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Moral Stories\n",
                        style: TextStyle(color: Color(0XFFFBBF24)),
                      ),
                      TextSpan(
                        text: "that Teach Life Lessons",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  "Short stories with powerful lessons. Discover kindness, honesty, and courage through these timeless tales.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondaryC,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 35),

                // 🎬 Main Player
                if (_controller != null && _controller!.value.isInitialized)
                  CustomVideoPlayer(
                    controller: _controller!,
                    onPlayPause: () {
                      setState(() {
                        if (_controller!.value.isPlaying) {
                          _controller!.pause();
                        } else {
                          _controller!.play();
                        }
                      });
                    },
                  )
                else
                  const Center(
                    child: CircularProgressIndicator(color: Colors.amber),
                  ),

                const SizedBox(height: 20),

                // 📜 Video List
                Expanded(
                  child: ListView.builder(
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      final video = videos[index];
                      final isPlaying = video["path"] == _currentVideoPath &&
                          _controller?.value.isPlaying == true;

                      return VideoItemTile(
                        title: video["title"]!,
                        thumbPath: video["thumb"]!,
                        isPlaying: isPlaying,
                        onTap: () => _loadVideo(video["path"]!),
                      );
                    },
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
