import 'package:flutter/material.dart';

progress(context, color) {
  showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(
            color: color,
          ),
        );
      });
}
