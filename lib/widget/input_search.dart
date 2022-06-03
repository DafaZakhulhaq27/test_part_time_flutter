import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/theme.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: content.copyWith(
        color: secondary,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: dark,
        hintStyle: content.copyWith(
          color: secondary,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: dark,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: "Search Course, Educators ...",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: dark,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: Icon(
          Icons.search,
          color: secondary,
          size: 30.0,
        ),
      ),
    );
  }
}
