import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  // moved out of build so it persists across rebuilds
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // TODO: navigateToScreens(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          label: 'Near By',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFFfd5352),
      unselectedItemColor: const Color(0xFF2c2b2b),
      onTap: _onItemTapped,
    );
  }
}
