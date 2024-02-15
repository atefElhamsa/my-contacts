import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactChannalCard extends StatelessWidget {
  String socialmedia;
  Uri socialmediaLink;
  ContactChannalCard({
    Key? key,
    required this.socialmedia,
    required this.socialmediaLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ActionsIconProvider>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
        child: InkWell(
          onDoubleTap: () {
            value.setMyPlatform(socialmedia);
            value.setMyUrl(socialmediaLink);
          },
          onTap: () {
            launchUrl(
              socialmediaLink,
              mode: LaunchMode.externalApplication,
            );
          },
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/$socialmedia"),
            radius: MediaQuery.sizeOf(context).height * 0.2,
          ),
        ),
      ),
    );
  }
}
