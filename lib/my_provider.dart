import 'package:flutter/material.dart';

class ActionsIconProvider extends ChangeNotifier {
  String? _myplatform;
  Uri? _myUrl;

  void setMyPlatform(value){
    _myplatform = value;
    notifyListeners();
  }

  void setMyUrl(value){
    _myUrl = value;
    notifyListeners();
  }

  String getMyPlatform() => _myplatform ?? "whatsapp.png";

  Uri getMyUrl() => _myUrl ?? Uri.parse("https://wa.me/+201552946586");

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
