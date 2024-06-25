import 'package:flutter/material.dart';
import 'package:toku/componants/itemlist.dart';
import 'package:toku/modles/item_model.dart';
import 'package:toku/res.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> names = [
    const ItemModel(
        enname: 'Black',
        jpname: '',
        image: Res.color_black,
        voice: 'sounds/colors/black.wav'),
    const ItemModel(
        enname: 'Brown',
        jpname: '',
        image:Res.color_brown,
        voice: 'sounds/colors/brown.wav'),
    const ItemModel(
        enname: 'Dusty Yellow',
        jpname: '',
        image: Res.color_dusty_yellow,
        voice: 'sounds/colors/dusty yellow.wav'),
    const ItemModel(
        enname: 'Gray',
        jpname: '',
        image: Res.color_gray,
        voice: 'sounds/colors/gray.wav'),
    const ItemModel(
        enname: 'Green',
        jpname: '',
        image: Res.color_green,
        voice: 'sounds/colors/green.wav'),
    const ItemModel(
        enname: 'Red',
        jpname: '',
        image: Res.color_red,
        voice: 'sounds/colors/red.wav'),
    const ItemModel(
        enname: 'White',
        jpname: '',
        image: Res.color_white,
        voice: 'sounds/colors/white.wav'),
    const ItemModel(
        enname: 'Yellow',
        jpname: '',
        image: Res.yellow,
        voice: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ItemList(
              item: names[index],
              color: const Color(0xff79359F),
            );
          }),
    );
  }
}
