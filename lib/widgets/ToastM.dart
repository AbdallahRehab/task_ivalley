import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ToastM {
  static show(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey[700],
        timeInSecForIosWeb: 5);
  }

}
