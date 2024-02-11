import 'package:appbarwithsearch/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Practicing Reusable AppBar in Flutter',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(
                      title: 'Profile',
                    ),
                  ),
                );
              },
              child: const Text('Go to Profile Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
