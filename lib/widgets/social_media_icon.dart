import 'package:flutter/material.dart';
import 'package:flutter_application_1/start.dart';

// ignore: must_be_immutable
class ContactChannalCard extends StatelessWidget {
  String socialmedia;
  String socialmediaLink;
  ContactChannalCard({
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return StartSocialMedia(
                socialmedia: socialmedia,
                socialmediaLink: socialmediaLink,
              );
            }),
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
