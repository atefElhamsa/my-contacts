import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactChannalCard extends StatefulWidget {
  String socialmedia;
  Uri socialmediaLink;
  ContactChannalCard({
    Key? key,
    required this.socialmedia,
    required this.socialmediaLink,
  }) : super(key: key);

  @override
  State<ContactChannalCard> createState() => _ContactChannalCardState();
}

class _ContactChannalCardState extends State<ContactChannalCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
        child: InkWell(
          onDoubleTap: () {
            value.setMyPlatform(widget.socialmedia);
            value.setMyUrl(widget.socialmediaLink);
            value.notifyListeners();
          },
          onTap: () {
            launchUrl(
              widget.socialmediaLink,
              mode: LaunchMode.externalApplication,
            );
          },
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/${widget.socialmedia}"),
            radius: MediaQuery.sizeOf(context).height * 0.2,
          ),
        ),
      ),
    );
  }
}
