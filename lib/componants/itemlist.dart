import 'package:flutter/material.dart';
import 'package:toku/componants/item_info.dart';
import 'package:toku/modles/item_model.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
    required this.item,
    required this.color,
  }) : super(key: key);
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xffEF9235),
      child: Row(
        children: [
          Container(color: const Color(0xffFFF6DC), child: Image.asset(item.image!)),
          Expanded(child: Iteminfo(item: item, color: color))
        ],
      ),
    );
  }
}
