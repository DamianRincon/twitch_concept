import 'package:flutter/material.dart';

/// Appbar
Widget appBarEmpty() => PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        toolbarHeight: 0,
        elevation: 0,
      ),
    );