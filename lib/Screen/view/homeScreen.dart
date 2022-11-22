import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playstore/Screen/Controller/HomeController.dart';
import 'package:playstore/Screen/view/navbar/AppsScreen.dart';
import 'package:playstore/Screen/view/navbar/BooksScreen.dart';
import 'package:playstore/Screen/view/navbar/GamesScreen.dart';
import 'package:playstore/Screen/view/navbar/MovieScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;

  void PagesSelect(int index) {
    setState(() {
      i = index;
      print(i);
    });
  }

  homeController Controller = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: i,
              onTap: (index) {
                PagesSelect(index);
              },
              selectedItemColor: Colors.black,
              unselectedItemColor: Color(0xFF989898),
                type: BottomNavigationBarType.fixed
                , items: [
                BottomNavigationBarItem(label: 'App', icon: Icon(Icons.apple)),
                BottomNavigationBarItem(
                    label: 'Games', icon: Icon(Icons.games)),
                BottomNavigationBarItem(
                    label: 'Movie&TV', icon: Icon(Icons.movie)),
                BottomNavigationBarItem(label: 'Books', icon: Icon(Icons.book)),
              ],
            ),
            body: IndexedStack(
              index: i,
              children: [
                AppScreen(),
                BooksScreen(),
                GamesScreen(),
                MovieScreen()
              ],
            )));
  }
}
