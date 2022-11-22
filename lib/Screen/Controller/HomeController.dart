import 'package:get/get.dart';
import 'package:playstore/Screen/view/navbar/AppsScreen.dart';
import 'package:playstore/Screen/view/navbar/BooksScreen.dart';
import 'package:playstore/Screen/view/navbar/GamesScreen.dart';
import 'package:playstore/Screen/view/navbar/MovieScreen.dart';

class homeController extends GetxController
{
  RxList pages =[
    AppScreen(),
    GamesScreen(),
    BooksScreen(),
    MovieScreen(),
  ].obs;
  int i =0;
  void PagesSelect(int index)
  {
    i=index;
    print(i);
  }
}