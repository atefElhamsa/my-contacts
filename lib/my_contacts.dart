import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/social_media_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my-variables.dart';

// ignore: must_be_immutable
class MyContacts extends StatefulWidget {
  MyContacts({super.key});
  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {

  void changeMyState(){
    setState(() {});
  }

  
  final Map<String, String> socialMedia = {
    "whatsapp.png": "https://wa.me/+201552946586",
    "facebook.png": "https://www.facebook.com/atef.elhamsa.7",
    "instagram.png": "https://www.instagram.com/3atef_elhamsa_/",
    "twitter.png": "https://twitter.com/AtefElhamsa4",
    "snapchat.png":
        "https://www.snapchat.com/add/atefelhamsa?share_id=Upk2iq1hOcs&locale=en-GB",
    "github.png": "https://github.com/atefElhamsa",
    "youtube.png": "https://youtube.com/@atefelhamsa5377?si=_8O8FSdZ2h8AGDCh",
    "tiktok.png": "https://www.tiktok.com/@elhamsa6?_t=8jpeonnNH8P&_r=1",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My Contacts",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: IconButton(
              onPressed: () {
                myUrl == null
                    ? launchUrl(Uri.parse("tel:+201552946586"))
                    : launchUrl(
                        myUrl!,
                        mode: LaunchMode.externalApplication,
                      );
              },
              icon: myplatform == null
                  ? Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.white,
                    )
                  : CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/$myplatform"),
                    ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/cr7.png"),
                radius: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Atef Elhamsa",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "+201552946586",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse("tel:+201552946586"));
                    },
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: socialMedia.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return ContactChannalCard(
                    socialmedia: socialMedia.keys.toList()[index],
                    socialmediaLink: socialMedia.values.toList()[index],
                    changeState : changeMyState,
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
