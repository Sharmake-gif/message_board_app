import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('First Name: Johnathan'),
            SizedBox(height: 8),
            Text('Last Name: Doe'),
            SizedBox(height: 8),
            Text('Role: Student'),
            SizedBox(height: 8),
            Text('Email: john.doe@student.gsu.edu.'),
          ],
        ),
      ),
    );
  }
