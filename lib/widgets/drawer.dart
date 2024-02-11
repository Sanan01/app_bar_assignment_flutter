import 'package:flutter/material.dart';
import 'package:appbarwithsearch/screens/home_screen.dart';
import 'package:appbarwithsearch/screens/increment_screen.dart';
import 'package:appbarwithsearch/screens/profile_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              'App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              _navigateToScreen(context, const HomeScreen(title: 'Home'));
            },
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              _navigateToScreen(context, const ProfileScreen(title: 'Profile'));
            },
          ),
          ListTile(
            title: const Text('Increment'),
            onTap: () {
              _navigateToScreen(
                  context, const IncrementScreen(title: 'Increment'));
            },
          ),
        ],
      ),
    );
  }
}
