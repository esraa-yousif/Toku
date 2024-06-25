import 'package:flutter/material.dart';
import 'package:toku/componants/category.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text('TOKU'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyPage();
              }));
            },
            text: 'Family Members',
            color: const Color(0xff558837),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff50ADC7),
          )
        ],
      ),
    );
  }
}
