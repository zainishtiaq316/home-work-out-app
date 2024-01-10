import 'package:flutter/material.dart';

loader(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Center(
            child: CircularProgressIndicator(
          color: Colors.blue,
        ));
      });
}
