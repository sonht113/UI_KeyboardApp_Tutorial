import 'package:app_keyboard_shop_tutorial/screens/box_chat_screen.dart';
import 'package:app_keyboard_shop_tutorial/screens/orders_screen.dart';
import 'package:app_keyboard_shop_tutorial/screens/products_overview_screen.dart';
import 'package:app_keyboard_shop_tutorial/screens/profile.dart';
import 'package:app_keyboard_shop_tutorial/screens/setting_screen.dart';
import 'package:app_keyboard_shop_tutorial/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({Key? key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  void nvgToSocket(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.home_outlined, color: KColors.primary),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ProductsOverviewScreen.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.payment, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(OrdersScreen.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.person, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(ProFile.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.chat_bubble_outline_rounded,
                    color: KColors.icon),
                onPressed: () => nvgToSocket(context),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.settings, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SettingsPage.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
