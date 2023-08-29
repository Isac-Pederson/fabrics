import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/provider/app_bar_selected.dart';

class IconCircle extends StatelessWidget {
  final double pageNum;
  final String pushScreen;
  final String tooltip;
  final IconData? icon;
  const IconCircle({
    super.key,
    required this.pageNum,
    required this.pushScreen,
    required this.icon,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<PageSelected>(
      builder: (context, page, child) {
        return Stack(children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: page.changeCircleColor(pageNumber: pageNum),
          ),
          IconButton(
            tooltip: tooltip,
            icon: Icon(
              icon,
              size: page.changeIconSize(pageNumber: pageNum),
              color: page.changeColor(pageNumber: pageNum),
            ),
            onPressed: () {
              page.changePageNumber(pageNum);
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(pushScreen);
            },
          ),
        ]);
      },
    );
  }
}
