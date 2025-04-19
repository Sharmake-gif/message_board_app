import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text('Please select a room'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('Menu')),
            ListTile(title: Text('Message Boards')),
            ListTile(title: Text('Profile')),
            ListTile(title: Text('Settings')),
          ],
        ),
      ),
      body: ListView(
        children: [
          buildRoomCard(context, 'Games', 'assets/games.jpg'),
          buildRoomCard(context, 'Business', 'assets/business.jpg'),
          buildRoomCard(context, 'Public Health', 'assets/health.jpg'),
          buildRoomCard(context, 'Study', 'assets/study.jpg'),
        ],
      ),
    );
  }

  Widget buildRoomCard(BuildContext context, String label, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ChatScreen(roomName: label)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(blurRadius: 4, color: Colors.white)],
          ),
        ),
      ),
    );
  }
}
