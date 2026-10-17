import 'package:flutter/material.dart';
import 'package:youtube_desktop_clone/widgets.dart/desktop_appbar.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const DesktopAppBar());
  }
}
