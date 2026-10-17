import 'package:flutter/material.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: Logo
          Row(
            children: const [
              Icon(Icons.play_arrow_rounded, color: Colors.red, size: 32),
              SizedBox(width: 6),
              Text(
                'YouTube',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                  fontSize: 20,
                ),
              ),
              Text(' PK', style: TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),

          // Center: Search Bar
          SizedBox(
            width: 500,
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      filled: true,
                      fillColor: const Color(0xFF121212),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.grey.shade800),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20),
                        ),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF222222),
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.grey.shade800),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.search, size: 20),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),

          // Right: Action Icons & Profile
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.video_call_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.purple,
                child: Text(
                  'S',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
