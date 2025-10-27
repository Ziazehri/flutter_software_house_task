import 'package:audioplayers/audioplayers.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class AudioSongsScr extends StatefulWidget {
  const AudioSongsScr({super.key});

  @override
  State<AudioSongsScr> createState() => _AudioSongsScrState();
}

class _AudioSongsScrState extends State<AudioSongsScr> {
  final AudioPlayer _player = AudioPlayer();
  int? _currentIndex;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool isPlaying = false;

  final audios = [
    {
      'title': 'Twinkle Twinkle',
      'image': 'assets/images/twinkle.png',
      'audio': 'assets/audios/twinkle.mp3',
      'color': const Color(0xFFE57373),
    },
    {
      'title': 'Mary had a little lamb',
      'image': 'assets/images/mary.png',
      'audio': 'mary.mp3',
      'color': const Color(0xFF81C784),
    },
    {
      'title': 'Row Row your boat',
      'image': 'assets/images/row.png',
      'audio': 'assets/audios/row.mp3',
      'color': const Color(0xFF64B5F6),
    },
    {
      'title': 'Nani tere morne ko',
      'image': 'assets/images/hush.png',
      'audio': 'assets/audios/nani.mp3',
      'color': const Color(0xFFBA68C8),
    },
    {
      'title': 'Aaha Tamator bare mazedar',
      'image': 'assets/images/italian.png',
      'audio': 'assets/audios/aaha.mp3',
      'color': const Color(0xFFFFB74D),
    },
  ];

  @override
  void initState() {
    super.initState();

    // Listen to duration changes
    _player.onDurationChanged.listen((d) {
      setState(() => _duration = d);
    });

    // Listen to position updates
    _player.onPositionChanged.listen((p) {
      setState(() => _position = p);
    });

    // Handle when song finishes
    _player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
        _position = Duration.zero;
      });
    });
  }

  Future<void> playAudio(String path, int index) async {
    if (_currentIndex == index && isPlaying) {
      await _player.pause();
      setState(() => isPlaying = false);
    } else {
      await _player.stop();
      await _player.play(AssetSource(path.replaceFirst('assets/', '')));
      setState(() {
        _currentIndex = index;
        isPlaying = true;
      });
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  String formatTime(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CustomHeader2(),

                //  Search Bar
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search songs, audios or categories...",
                      hintStyle: const TextStyle(color: Colors.white70),
                      prefixIcon: const Icon(Icons.search, color: Colors.white),
                      filled: true,
                      fillColor: AppColors.primaryB,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                //  Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Sing, Learn\n & Smile!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      "assets/images/baby_singing.png",
                      height: 170,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(
                          text: "Nursery audios",
                          onPressed: () {},
                          backgroundColor: AppColors.secondaryB),
                      customButton(
                          text: "Islamic Songs",
                          onPressed: () {},
                          backgroundColor: AppColors.primaryC),
                      customButton(
                          text: "All",
                          onPressed: () {},
                          backgroundColor: AppColors.primaryB),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(
                          text: "Educational Songs",
                          onPressed: () {},
                          backgroundColor: Colors.teal),
                      customButton(
                          text: "Motivational Songs",
                          onPressed: () {},
                          backgroundColor:
                              const Color.fromARGB(255, 155, 130, 225)),
                    ],
                  ),
                ),


                                const SizedBox(height: 30),



                //  audios List
                Expanded(
                  child: ListView.separated(
                    itemCount: audios.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      final item = audios[index];
                      final isThisPlaying =
                          _currentIndex == index && isPlaying;

                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: item['color'] as Color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ListTile(
                          minTileHeight: 60,
                          minLeadingWidth: 60,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              item['image'] as String,
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            item['title'] as String,
                            style: const TextStyle(
                              color: AppColors.primaryA,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: _currentIndex == index
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Slider(
                                      min: 0,
                                      max: _duration.inSeconds.toDouble(),
                                      value: _position.inSeconds
                                                  .toDouble()
                                                  .clamp(0, _duration.inSeconds.toDouble()) ??
                                              0,
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.white38,
                                      onChanged: (value) async {
                                        final position =
                                            Duration(seconds: value.toInt());
                                        await _player.seek(position);
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(formatTime(_position),
                                              style: const TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 12)),
                                          Text(formatTime(_duration),
                                              style: const TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : null,
                          trailing: IconButton(
                            icon: Icon(
                              isThisPlaying
                                  ? Icons.pause_circle
                                  : Icons.play_circle,
                              color: Colors.white,
                              size: 36,
                            ),
                            onPressed: () =>
                                playAudio(item['audio'] as String, index),
                          ),
                        ),
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


// Custom Button
Widget customButton({
  required String text,
  required VoidCallback onPressed,
  Color? backgroundColor,
  double fontSize = 14,
  double borderRadius = 20,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      minimumSize: const Size(0, 50),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        // fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}
}