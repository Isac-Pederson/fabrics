import 'package:flutter/material.dart';

import '../../models/classes/item.dart';
import '../constants/text_styling.dart';

class ItemTile extends StatelessWidget {
  final List<Item> list;
  final int index;
  final IconButton iconButton1;
  final IconButton iconButton2;
  const ItemTile({
    super.key,
    required this.list,
    required this.index,
    required this.iconButton1,
    required this.iconButton2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      leading: Image.network(list[index].url),
      title: Text(
        list[index].title,
        style: kItemStyle,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconButton1,
          iconButton2,
        ],
      ),
    );
  }
}
