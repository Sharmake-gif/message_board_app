import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String roomName;
  const ChatScreen({super.key, required this.roomName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(roomName)),
      body: const Center(child: Text('Chat messages will go here')),
    );
  }
}
