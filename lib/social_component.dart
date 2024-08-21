import 'package:flutter/material.dart';

Widget socialHandle(String imgUrl) {
  return CircleAvatar(
    radius: 25,
    backgroundImage: NetworkImage(imgUrl),
  );
}
