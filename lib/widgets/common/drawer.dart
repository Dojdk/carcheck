import 'package:carcheck/theme/fonts.dart';
import 'package:flutter/material.dart';

import '../../pages/searchpage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          ListTile(
            title: const Text('Axtar', style: size20weight700),
            onTap: () {
              Navigator.of(context).pushNamed(SearchPage.routeName);
            },
          ),
          ListTile(
            title: const Text('About', style: size20weight700),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Contact', style: size20weight700),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
