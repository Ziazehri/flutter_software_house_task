import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;
  final VoidCallback onPlayPause;

  const CustomVideoPlayer({
    super.key,
    required this.controller,
    required this.onPlayPause,
  });

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  bool _showControls = true;
  Timer? _hideTimer;

  void _startHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 2), () {
      if (mounted) setState(() => _showControls = false);
    });
  }

  void _onTapVideo() {
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) _startHideTimer();
  }

  @override
  void initState() {
    super.initState();
    _startHideTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;

    return GestureDetector(
      onTap: _onTapVideo,
      behavior: HitTestBehavior.opaque,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            // 🎞 Main Video
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: controller.value.isInitialized
                  ? VideoPlayer(controller)
                  : Container(
                      color: Colors.black12,
                      child: const Center(
                        child: CircularProgressIndicator(color: Colors.amber),
                      ),
                    ),
            ),

            // ▶ Center Play Button (only when paused)
            AnimatedOpacity(
              opacity: (!controller.value.isPlaying && _showControls) ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Center(
                child: GestureDetector(
                  onTap: widget.onPlayPause,
                  child: const Icon(
                    Icons.play_circle_fill,
                    color: Colors.amber,
                    size: 80,
                  ),
                ),
              ),
            ),

            // 🎛 Bottom Control Bar (always pinned at bottom)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                opacity: _showControls ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          controller.value.isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_fill,
                          color: Colors.amber,
                          size: 34,
                        ),
                        onPressed: () {
                          widget.onPlayPause();
                          _startHideTimer();
                        },
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 6,
                            child: VideoProgressIndicator(
                              controller,
                              allowScrubbing: true,
                              colors: const VideoProgressColors(
                                playedColor: Colors.amberAccent,
                                bufferedColor: Colors.white54,
                                backgroundColor: Colors.white12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
