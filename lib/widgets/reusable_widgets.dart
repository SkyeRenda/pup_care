import 'package:flutter/material.dart';

class ReusableWidgets {
  static getAppBar(String title) {
    return AppBar(
      title: Text(title),
      actions: [
        PopupMenuButton(
            icon: const Image(
                height: 20, image: AssetImage('lib/assets/plus.png')),
            itemBuilder: (context) => [
                  const PopupMenuItem(child: Text("Add Dog")),
                  const PopupMenuItem(child: Text("Settings")),
                ])
      ],
    );
  }
}
