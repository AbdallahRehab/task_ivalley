import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  bool isShow = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  setIsPassShow(bool status) {
    isShow = status;
    notifyListeners();
  }
}
