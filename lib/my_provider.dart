import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String? _myplatform;
  Uri? _myUrl;

  void setMyPlatform(value){
    _myplatform = value;
  }

  void setMyUrl(value){
    _myUrl = value;
  }

  String? getMyPlatform() => _myplatform;

  Uri? getMyUrl() => _myUrl;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
