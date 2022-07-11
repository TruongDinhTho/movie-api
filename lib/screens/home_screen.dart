import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/repository/user_repository.dart';
import 'package:movie_app/style/theme.dart' as Style;
import 'package:movie_app/widgets/genre.dart';
import 'package:movie_app/widgets/now_playing.dart';
import 'package:movie_app/widgets/person.dart';
import 'package:movie_app/widgets/top_movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.CustomColors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.CustomColors.mainColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: Text('App Movie'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(EvaIcons.searchOutline, color: Colors.white)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(EvaIcons.logOut, color: Colors.white)
          ),
        ],
      ),
      body: ListView(
        children: [
          NowPlaying(),
          GenresScreen(),
          PersonList(),
          TopMovies(),
        ],
      ),
      
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Login',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Style.CustomColors.fourthColor,
        onTap: _onItemTapped,
      ),
    );
  }

   void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  void initState() {
    super.initState();
  }
}