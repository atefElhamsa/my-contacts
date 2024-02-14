import 'package:flutter/material.dart';
import 'package:flutter_application_1/my-variables.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactChannalCard extends StatefulWidget {
  String socialmedia;
  String socialmediaLink;
  Function changeState;
  ContactChannalCard({
    Key? key,
    required this.socialmedia,
    required this.socialmediaLink,
    required this.changeState,
  }) : super(key: key);

  @override
  State<ContactChannalCard> createState() => _ContactChannalCardState();
}

class _ContactChannalCardState extends State<ContactChannalCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
      child: InkWell(
        onDoubleTap: () {
          myplatform = widget.socialmedia;
          myUrl = Uri.parse(widget.socialmediaLink);
          widget.changeState();
        },
        onTap: () {
          launchUrl(
            Uri.parse(widget.socialmediaLink),
            mode: LaunchMode.externalApplication,
          );
        },
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/${widget.socialmedia}"),
          radius: MediaQuery.sizeOf(context).height * 0.2,
        ),
      ),
    );
  }
}
