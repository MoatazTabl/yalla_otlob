import 'package:flutter/material.dart';

class UserHomePageScreen extends StatelessWidget {
  const UserHomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(child: Text("User"))
        ],
      ),
    );
  }
}
