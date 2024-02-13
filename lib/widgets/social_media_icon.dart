import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
  String socialmedia;
  String socialmediaLink;
  SocialMediaIcon({
    Key? key,
    required this.socialmedia,
    required this.socialmediaLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
      child: InkWell(
        onTap: () {
          launchUrl(
            Uri.parse(socialmediaLink),
            mode: LaunchMode.externalApplication,
          );
        },
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/$socialmedia"),
          radius: MediaQuery.sizeOf(context).height * 0.2,
        ),
      ),
    );
  }
}
