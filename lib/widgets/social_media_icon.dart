import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange),
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse(socialmediaLink),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Text(
                      "Start ${socialmedia.substring(0, socialmedia.length - 4)}"),
                ),
              );
            },
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
