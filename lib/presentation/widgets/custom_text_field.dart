import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/resource/app_values.dart';

Widget CustomTextField(TextEditingController textController) {
  return TextField(
    controller: textController,
    style: const TextStyle(color: Colors.white),
    cursorColor: Colors.white,
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.search, color: Colors.white),
      contentPadding: EdgeInsets.all(AppPadding.p20),
      labelText: 'Enter your text here',
      labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(AppSize.s40)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius:
        BorderRadius.all(Radius.circular(AppSize.s40)),
      ),
    ),
  );
}
