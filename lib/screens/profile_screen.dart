import 'package:flutter/material.dart';
import 'package:appbarwithsearch/widgets/drawer.dart';
import 'package:appbarwithsearch/widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: title),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/jpeg/baltit.jpg'),
            ),
            Text(
              'Sanan Baig',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
