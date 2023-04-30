import 'package:codelab2/models/bottom_bar_model/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../models/bottom_bar_model/bottom_bar_items.dart';
import '../const/color.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final List<BottomBarModel> _bottomBarItems = bottomBarListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          _bottomBarItems.length,
          (index) {
            var barItemWidget = _bottomBarItems[index];

            return IconButton(
              onPressed: () {
                setState(() {
                  for (var element in _bottomBarItems) {
                    element.isSelected = element == barItemWidget;
                  }
                });
              },
              icon: Icon(
                barItemWidget.icon,
                color: barItemWidget.isSelected! ? mainYellow : Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}
