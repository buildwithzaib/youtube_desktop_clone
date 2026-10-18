import 'package:flutter/material.dart';

class Desktopsidebar extends StatefulWidget {
  final Function(int) onDestinationSelected;

  const Desktopsidebar({super.key, required this.onDestinationSelected});

  @override
  State<Desktopsidebar> createState() => _DesktopsidebarState();
}

class _DesktopsidebarState extends State<Desktopsidebar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: Color(0xFF0F0F0F),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
        widget.onDestinationSelected;
      },
      labelType: NavigationRailLabelType.all,
      unselectedIconTheme: IconThemeData(color: Colors.white70),
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: Text("Home", style: TextStyle(color: Colors.white)),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.explore_outlined),
          selectedIcon: Icon(Icons.explore),
          label: Text("Shorts", style: TextStyle(color: Colors.white)),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.subscriptions_outlined),
          selectedIcon: Icon(Icons.subscriptions),
          label: Text("Subscriptions", style: TextStyle(color: Colors.white)),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.video_library_outlined),
          selectedIcon: Icon(Icons.video_library),
          label: Text("You", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
