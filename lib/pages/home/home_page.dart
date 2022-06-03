import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/pages/home/bottom_navigation_container.dart';
import 'package:test_parttime_flutter/pages/home/profile_section.dart';
import 'package:test_parttime_flutter/pages/home/top_educator_section.dart';
import 'package:test_parttime_flutter/pages/home/video_section.dart';
import 'package:test_parttime_flutter/theme.dart';
import 'package:test_parttime_flutter/widget/input_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              profileSection(),
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: const InputSearch(),
              ),
              const SizedBox(
                height: 24,
              ),
              const VideoSection(),
              const SizedBox(
                height: 24,
              ),
              const TopEducatorSection()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationContainer(),
    );
  }
}
