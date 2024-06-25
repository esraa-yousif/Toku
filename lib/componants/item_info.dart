import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/modles/item_model.dart';

class Iteminfo extends StatelessWidget {
  const Iteminfo({Key? key, required this.item, required this.color})
      : super(key: key);

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpname,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  item.enname,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.voice));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
    );
  }
}
