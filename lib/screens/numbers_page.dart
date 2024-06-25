import 'package:flutter/material.dart';
import 'package:toku/componants/itemlist.dart';
import 'package:toku/modles/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<ItemModel> numbers = const [
    ItemModel(
        voice: 'sounds/numbers/number_one_sound.mp3',
        enname: 'One',
        image: 'assets/images/numbers/number_one.png',
        jpname: 'Ichi'),
    ItemModel(
        voice: 'sounds/numbers/number_two_sound.mp3',
        enname: 'Two',
        image: 'assets/images/numbers/number_two.png',
        jpname: 'Ni'),
    ItemModel(
        voice: 'sounds/numbers/number_three_sound.mp3',
        enname: 'Three',
        image: 'assets/images/numbers/number_three.png',
        jpname: 'San'),
    ItemModel(
        voice: 'sounds/numbers/number_four_sound.mp3',
        enname: 'Four',
        image: 'assets/images/numbers/number_four.png',
        jpname: 'Shi'),
    ItemModel(
        voice: 'sounds/numbers/number_five_sound.mp3',
        enname: 'Five',
        image: 'assets/images/numbers/number_five.png',
        jpname: 'Go'),
    ItemModel(
        voice: 'sounds/numbers/number_six_sound.mp3',
        enname: 'Six',
        image: 'assets/images/numbers/number_six.png',
        jpname: 'Roku'),
    ItemModel(
        voice: 'sounds/numbers/number_seven_sound.mp3',
        enname: 'Seven',
        image: 'assets/images/numbers/number_seven.png',
        jpname: 'Seban'),
    ItemModel(
        voice: 'sounds/numbers/number_eight_sound.mp3',
        enname: 'Eight',
        image: 'assets/images/numbers/number_eight.png',
        jpname: 'Hachi'),
    ItemModel(
        voice: 'sounds/numbers/number_nine_sound.mp3',
        enname: 'Nine',
        image: 'assets/images/numbers/number_nine.png',
        jpname: 'Kyu'),
    ItemModel(
        voice: 'sounds/numbers/number_ten_sound.mp3',
        enname: 'Ten',
        image: 'assets/images/numbers/number_ten.png',
        jpname: 'Ju'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color(0xff463228),
          title: const Text('Numbers'),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ItemList(
              item: numbers[index],
              color: const Color(0xffEF9235),
            );
          },
        ));
  }
}
