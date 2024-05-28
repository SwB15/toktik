import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButtom(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
        CustomIconButtom(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        ),
      ],
    );
  }
}

class CustomIconButtom extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const CustomIconButtom(
      {super.key, required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          ),
        ),
        Text('$value')
      ],
    );
  }
}
