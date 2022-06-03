import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/theme.dart';

Container profileSection() {
  return Container(
    margin: EdgeInsets.all(defaultMargin),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Satwik',
                style: h1,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'What are you learning today ?',
                style: content.copyWith(
                  color: secondary,
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: ClipOval(
            child: Image.asset(
              'assets/images/avatar.png',
            ),
          ),
        )
      ],
    ),
  );
}
