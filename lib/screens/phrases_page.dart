import 'package:flutter/material.dart';
import 'package:toku/componants/item_info.dart';
import 'package:toku/modles/item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrases = [
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'are you coming',
        voice: 'sounds/phrases/are_you_coming.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'dont forget to subscribe',
        voice: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'how are you feeling',
        voice: 'sounds/phrases/how_are_you_feeling.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'i love anime',
        voice: 'sounds/phrases/i_love_anime.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'i love programmindg',
        voice: 'sounds/phrases/i_love_programming.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'programming is easy',
        voice: 'sounds/phrases/programming_is_easy.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'what is your name',
        voice: 'sounds/phrases/what_is_your_name.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'where are you going',
        voice: 'sounds/phrases/where_are_you_going.wav'),
    const ItemModel(
        image: '',
        jpname: '',
        enname: 'yes im coming',
        voice: 'sounds/phrases/yes_im_coming.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return Iteminfo(
              item: phrases[index],
              color: const Color(0xff50ADC7),
            );
          }),
    );
  }
}
