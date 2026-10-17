import 'package:flutter/material.dart';
import 'package:youtube_desktop_clone/screens/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Mainscreen(),
    );
  }
}

// class BasicDesktopScreen extends StatefulWidget {
//   const BasicDesktopScreen({super.key});

//   @override
//   State<BasicDesktopScreen> createState() => _BasicDesktopScreenState();
// }

// class _BasicDesktopScreenState extends State<BasicDesktopScreen> {
//   // Sidebar me konsa option select hai (0 = Home, 1 = Profile)
//   int _selectedIndex = 0;

//   // Har option per kaunsa text nazar aayega
//   final List<Widget> _pages = [
//     const Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
//     const Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           // 1. Left Side Menu (Sidebar)
//           NavigationRail(
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (int index) {
//               setState(() {
//                 _selectedIndex =
//                     index; // Option change hone per screen update karein
//               });
//             },
//             destinations: const [
//               NavigationRailDestination(
//                 icon: Icon(Icons.home),
//                 label: Text('Home'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.person),
//                 label: Text('Profile'),
//               ),
//             ],
//           ),

//           const VerticalDivider(width: 1, thickness: 1),

//           // 2. Right Side Screen Area
//           Expanded(child: Column(children: [])),
//         ],
//       ),
//     );
//   }
// }
