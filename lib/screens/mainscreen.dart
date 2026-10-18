import 'package:flutter/material.dart';
import 'package:youtube_desktop_clone/widgets.dart/desktopsidebar.dart';
import 'package:youtube_desktop_clone/widgets.dart/desktop_appbar.dart';
import 'package:youtube_desktop_clone/widgets.dart/videocard.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  final List<VideoModel> sampleVideos = const [
    VideoModel(
      title: 'Cracking glass of the windows',
      channelName: 'Crackking ',
      views: '240K views',
      timeAgo: '2 days ago',
      duration: '18:24',
      videoId: 'g3-VxLQO7do',
    ),
    VideoModel(
      title: 'Rick Astley NEVER GONNA GIVE UP',
      channelName: 'Music world',
      views: '85K views',
      timeAgo: '1 week ago',
      duration: '25:10',
      videoId: 'dQw4w9WgXcQ',
    ),
    VideoModel(
      title: 'ASHES of the CASTLE',
      channelName: 'Wisdom',
      views: '510K views',
      timeAgo: '3 weeks ago',
      duration: '42:15',
      videoId: 'L_LUpnjgPso',
    ),
    VideoModel(
      title: 'Modelling shapes of the world',
      channelName: 'World Celebs',
      views: '120K views',
      timeAgo: '5 days ago',
      duration: '31:05',
      videoId: 'fJ9rUzIMcZQ',
    ),
    VideoModel(
      title: 'Ciao | Pasito Pasito',
      channelName: 'Club Vibes',
      views: '45K views',
      timeAgo: '1 month ago',
      duration: '15:40',
      videoId: 'kJQP7kiw5Fk',
    ),
    VideoModel(
      title: 'Kangroo wars of the year',
      channelName: 'Australia stories',
      views: '300K views',
      timeAgo: '2 months ago',
      duration: '12:50',
      videoId: '3JZ_D3ELwOQ',
    ),
    VideoModel(
      title: 'Dancing Song',
      channelName: 'Music World',
      views: '67K views',
      timeAgo: '4 days ago',
      duration: '09:18',
      videoId: 'l482T0yNkeo',
    ),
    VideoModel(
      title: 'Squid Game in Real',
      channelName: 'Mr - Beast',
      views: '190M views',
      timeAgo: '6 days ago',
      duration: '22:30',
      videoId: '0e3GPea1Tyg',
    ),
  ];

  final List<String> videoIds = const [
    'dQw4w9WgXcQ', // Video 1
    'g3-VxLQO7do', // Video 2
    'L_LUpnjgPso', // Video 3
    'fJ9rUzIMcZQ', // Video 4
    'kJQP7kiw5Fk', // Video 5
    '3JZ_D3ELwOQ', // Video 6
    'l482T0yNkeo', // Video 7
    '0e3GPea1Tyg', // Video 8
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DesktopAppBar(),
      body: Row(
        children: [
          Desktopsidebar(onDestinationSelected: (index) {}),
          VerticalDivider(thickness: 1, width: 1, color: Color(0xFF272727)),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(24.0),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 360,
                          mainAxisExtent: 340,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 24,
                        ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final video = sampleVideos[index % sampleVideos.length];
                      return Videocard(video: video, index: index + 1);
                    }, childCount: sampleVideos.length),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
