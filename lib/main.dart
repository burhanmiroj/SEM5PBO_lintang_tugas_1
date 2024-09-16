import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// Define a Song class to hold song details
class Song {
  final String songTitle;
  final String band;

  Song({required this.songTitle, required this.band});
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Song> songs = [
      Song(songTitle: 'What Makes You Beautiful', band: 'One Direction (Album Up All Night, 2011)'),
      Song(songTitle: 'Night Changes', band: 'One Direction (Album Four, 2014)'),
      Song(songTitle: 'Drag Me Down', band: 'One Direction (Album Made in the A.M., 2015)'),
      Song(songTitle: 'Story of My Life', band: 'One Direction (Album Midnight Memories, 2013)'),
      Song(songTitle: 'Little Things', band: 'One Direction (Album Take Me Home, 2012)'),
      Song(songTitle: 'Best Song Ever', band: 'One Direction (Album Midnight Memories, 2013)'),
      Song(songTitle: 'One Thing', band: 'One Direction (Album Up All Night, 2011)'),
      Song(songTitle: 'Steal My Girl', band: 'One Direction (Album Four, 2014)'),
      Song(songTitle: 'Live While We’re Young', band: 'One Direction (Album Take Me Home, 2012)'),
      Song(songTitle: 'Kiss You', band: 'One Direction (Album Take Me Home, 2012)'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0), // Add horizontal padding
          child: Row(
            children: const [
              Text(
                'Daftar musik favorit Lintang',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white // Change this value to adjust the text size
                ),
              ),
              Spacer(),           // Spacer to create flexible space between the text and the logo
              FlutterLogo(size: 30), // Flutter logo
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(songs[index].songTitle), // Display the song title
              subtitle: Text(
                songs[index].band, // Display the band name
                style: const TextStyle(fontSize: 12), // Adjust text size
              ),
            ),
          );
        },
      ),
    );
  }
}
