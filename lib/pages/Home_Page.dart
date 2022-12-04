import 'package:coffe_ui/pages/scaffold_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import 'drawer.dart';
import 'favourite_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobin Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Mobin Coffee Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    int tab = 1;
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Colors.grey.shade800,
      type: SideMenuType.slideNRotate,
      menu: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: buildMenu(),
      ),
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        background: Colors.grey.shade900,
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (_isOpened) {
          setState(() => isOpened = _isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black87,
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => toggleMenu(),
              ),
              elevation: 10,
              actions: [
                IconButton(
                  icon: const Icon(Icons.person, color: Colors.orange),
                  onPressed: () => toggleMenu(true),
                )
              ],
              title: Text(widget.title),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
              controller: _tabController,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const fav_page(),
                const sacffold_page(),
                const Center(
                  child: Text("You Don't have any Notification !"),
                ),
              ],
            ),
            bottomNavigationBar: MotionTabBar(
              initialSelectedTab: "Home",
              useSafeArea: true, // default: true, apply safe area wrapper
              labels: const ["Favourites", "Home", "Notifications"],
              icons: const [
                Icons.favorite,
                Icons.home,
                Icons.notifications,
              ],

              // optional badges, length must be same with labels

              tabSize: 40,
              tabBarHeight: 45,
              textStyle: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.bold),
              tabIconColor: Colors.grey,
              tabIconSize: 20.0,
              tabIconSelectedSize: 26.0,
              tabSelectedColor: Colors.orange,
              tabIconSelectedColor: Colors.white,
              tabBarColor: Colors.blue.shade100,
              onTabItemSelected: (int value) {
                setState(() {
                  _tabController.index = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
