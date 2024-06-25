import 'package:flutter/material.dart';
import 'package:toku/componants/itemlist.dart';
import 'package:toku/modles/item_model.dart';
import 'package:toku/res.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({Key? key}) : super(key: key);

  final List<ItemModel> names = [
    const ItemModel(
        enname: 'Father',
        jpname: 'Chichioya',
        image: Res.family_father,
        voice: 'sounds/family_members/father.wav'),
    const ItemModel(
        enname: 'Daughter',
        jpname: 'Musume',
        image: Res.family_daughter ,
        voice: 'sounds/family_members/daughter.wav'),
    const ItemModel(
        enname: 'Grand Father',
        jpname: 'Ojisan',
        image: Res.family_grandfather ,
        voice: Res.grandFather ),
    const ItemModel(
        enname: 'Mother',
        jpname: 'Hahaoya',
        image: Res.family_mother,
        voice: 'sounds/family_members/mother.wav'),
    const ItemModel(
        enname: 'Grand Mother',
        jpname: 'Sobo',
        image: Res.family_grandmother,
        voice: 'sounds/family_members/grand mother.wav'),
    const ItemModel(
        enname: 'Older Brother',
        jpname: 'Nisan',
        image: Res.family_older_brother,
        voice: 'soundsfamily_members/older bother.wav'),
    const ItemModel(
        enname: 'Older Sister',
        jpname: 'Ane',
        image:Res.family_older_sister,
        voice: 'sounds/family_members/older sister.wav'),
    const ItemModel(
        enname: 'Son',
        jpname: 'Musuko',
        image: Res.family_son,
        voice: 'sounds/family_members/son.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ItemList(
              item: names[index],
              color: const Color(0xff558837),
            );
          }),
    );
  }
}
