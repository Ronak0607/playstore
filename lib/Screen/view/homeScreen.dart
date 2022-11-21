import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playstore/Screen/Controller/HomeController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  homeController Controller = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Controller!.i,
        onTap: (index) {
          Controller!.PagesSelect(index);
        },
        fixedColor: Colors.black,
        unselectedItemColor: Color(0xFF989898),
        items: [
          BottomNavigationBarItem(label: 'App', icon: Icon(Icons.apple)),
          BottomNavigationBarItem(label: 'Games', icon: Icon(Icons.games)),
          BottomNavigationBarItem(label: 'Movie&TV', icon: Icon(Icons.movie)),
          BottomNavigationBarItem(label: 'Books', icon: Icon(Icons.book)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
                hintText: 'Search for app',
                prefixIcon: Icon(Icons.menu),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
