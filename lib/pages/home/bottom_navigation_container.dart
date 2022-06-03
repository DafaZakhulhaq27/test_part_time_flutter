import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/theme.dart';

class BottomNavigationContainer extends StatelessWidget {
  const BottomNavigationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.all(defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navigationItem(Icons.home, 'Home', true),
          navigationItem(Icons.category, 'Category', false),
          navigationItem(Icons.bookmark, 'Saved', false),
          navigationItem(Icons.settings, 'Settings', false),
        ],
      ),
    );
  }

  Column navigationItem(
    IconData iconData,
    String navigationName,
    bool isActive,
  ) {
    return Column(
      children: [
        Icon(
          iconData,
          color: isActive ? white : secondary,
          size: 25.0,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          navigationName,
          style: content.copyWith(
              fontSize: 12, color: isActive ? white : secondary),
        )
      ],
    );
  }
}
