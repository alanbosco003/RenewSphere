import 'package:flutter/material.dart';
import 'package:graphics/widgets/buttons/icon_button_with_text.dart';

class FeedWidget extends StatelessWidget {
  final String userName;
  final String userLevel;
  final String feedText;
  final int likeCount;
  final int commentCount;
  final VoidCallback onLikePressed;
  final VoidCallback onFeedTapped;

  const FeedWidget({
    Key? key,
    required this.userName,
    required this.userLevel,
    required this.feedText,
    required this.likeCount,
    required this.commentCount,
    required this.onLikePressed,
    required this.onFeedTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFeedTapped,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Reduced shadow opacity
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      userLevel,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              feedText,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomIconButton(
                      icon: Icons.heat_pump_rounded,
                      text: likeCount.toString(),
                      onPressed: onLikePressed,
                      isActive: true,
                    ),
                    const SizedBox(width: 10),
                    CustomIconButton(
                      icon: Icons.comment,
                      text: commentCount.toString(),
                      onPressed: () {
                        // Handle comment button press
                      },
                      isActive: false,
                    ),
                  ],
                ),
                CustomIconButton(
                  icon: Icons.share,
                  text: 'Share',
                  onPressed: () {
                    // Handle share button press
                  },
                  isActive: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
