import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class StartSocialMedia extends StatelessWidget {
  String socialmedia;
  String socialmediaLink;
  StartSocialMedia({
    super.key,
    required this.socialmedia, 
    required this.socialmediaLink
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.deepOrange),
          ),
          onPressed: () {
            launchUrl(
              Uri.parse(socialmediaLink),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text("Start Social Media"),
        ),
      ),
    );
  }
}
