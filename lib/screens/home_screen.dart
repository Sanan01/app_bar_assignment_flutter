import 'package:flutter/material.dart';
import 'package:appbarwithsearch/widgets/drawer.dart';
import 'package:appbarwithsearch/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      body: const Center(
        child: Center(
          child: Text(
            'Practicing Reusable AppBar in Flutter',
          ),
        ),
      ),
    );
  }
}
