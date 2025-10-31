import 'package:flutter/material.dart';

class VideoItemTile extends StatelessWidget {
  final String title;
  final String thumbPath;
  final bool isPlaying;
  final VoidCallback onTap;

  const VideoItemTile({
    super.key,
    required this.title,
    required this.thumbPath,
    required this.isPlaying,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
          color: isPlaying
              ? Colors.amber.withOpacity(0.25)
              : Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.asset(
                thumbPath,
                height: 70,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      isPlaying ? FontStyle.italic : FontStyle.normal,
                ),
              ),
            ),
            Icon(
              Icons.play_circle_fill,
              color: isPlaying ? Colors.greenAccent : Colors.amber,
              size: 28,
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
