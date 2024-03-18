import 'package:carcheck/widgets/common/appbar.dart';
import 'package:carcheck/widgets/searchpage/searchfield.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static const routeName='/searchpage';
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
      drawer: Drawer(),

      body: Column(
        children: [
          SearchField(),
        ],
      ),
    );
  }
}
