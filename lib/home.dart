import 'package:farmeasy/custom/drawer.dart';
import 'package:farmeasy/screens/crop_screen.dart';
import 'package:farmeasy/screens/crops_list.dart';
import 'package:farmeasy/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:farmeasy/custom/drawer.dart' as drawer;
import 'package:flutter/src/widgets/framework.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:farmeasy/screens/weather_screen.dart';
import 'package:farmeasy/screens/crop_search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PersistentTabController _persistentTabController;

  List<Widget> _buildScreens() =>
      [const HomePage(), CropsListView(), const Placeholder(), const WeatherScreen()];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            title: "Home",
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
            inactiveColorSecondary: Colors.purple),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.grass),
          title: "Crops",
          activeColorPrimary: Colors.teal,
          inactiveColorPrimary: Colors.grey,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/first": (final context) => const CropScreen(),
              "/second": (final context) => const WeatherScreen(),
            },
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.message),
          title: "Messages",
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/first": (final context) => const CropScreen(),
              "/second": (final context) => const WeatherScreen(),
            },
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.cloud),
          title: "Weather",
          activeColorPrimary: Colors.indigo,
          inactiveColorPrimary: Colors.grey,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/first": (final context) => const CropScreen(),
              "/second": (final context) => const WeatherScreen(),
            },
          ),
        ),
      ];

  @override
  void initState() {
    super.initState();
    _persistentTabController = PersistentTabController();
  }

  @override
  void dispose() {
    super.dispose();
    _persistentTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Theme.of(context).backgroundColor,
        // appBar: AppBar(),
        // drawer: const Drawer(
        //   child: drawer.SideDrawer(),
        // ),
        body: PersistentTabView(


          backgroundColor: Colors.black87,
          context,
          screens: _buildScreens(),
          items: _navBarsItems(),
        ),
      ),
    );
  }
}
