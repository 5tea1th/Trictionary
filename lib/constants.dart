import 'package:flutter/material.dart';
//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0i5RA4OLXdXHmwl7iJ_0H1qOdHI36Ng1_FQ&s

const kthemeColor = Colors.blue;

const kInputDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color : Colors.white70),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);