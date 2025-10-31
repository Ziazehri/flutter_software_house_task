import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/custom_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:app/widgets/video_item_tile.dart';


class FunnyCartoonsScr extends StatefulWidget {
  const FunnyCartoonsScr({super.key});

  @override
  State<FunnyCartoonsScr> createState() => _FunnyCartoonsScrState();
}

class _FunnyCartoonsScrState extends State<FunnyCartoonsScr> {
  VideoPlayerController? _controller;

  //  Local funny cartoon videos
  final List<Map<String, String>> videos = [
    {
      "title": "Monkey Pranks Gone Bananas",
      "path": "assets/videos/monkey_funny.mp4",
      "thumb": "assets/images/banana_c.png",
    },
    {
      "title": "Cat vs Dog – The Epic Battle",
      "path": "assets/videos/cat_dog_funny.mp4",
      "thumb": "assets/images/cat_dog.png",
    },
    {
      "title": "Dancing Penguins Party",
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

  //  Load and auto-pause previous video
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

  //  UI
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

                //  Title
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Funny ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Cartoons That \n",
                        style: TextStyle(color: Color(0XFFFBBF24)),
                      ),
                      TextSpan(
                        text: "Make You Laugh!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  "Hilarious moments, crazy characters, and endless laughter.\nTap and giggle your way through the funniest clips!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondaryC,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 35),

                // Main Player
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
  // onToggleFullscreen: _toggleFullScreen,
),




                const SizedBox(height: 20),

                //  Video List
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
