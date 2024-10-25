import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  Function onClicked;

  DrawerItem(this.onClicked, {super.key});

  static int category = 1;
  static int setting = 1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            height: 150,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Navigation",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              onClicked(category);
            },
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onClicked(setting) {}
            },
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.account_circle,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "My account",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              onClicked(setting) {}
            },
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
