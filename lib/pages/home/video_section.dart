import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/theme.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  String selectedCategory = "My Courses";
  List<Map<String, String>> dataCourse = [
    {
      'image': 'course_1.jpeg',
      'title': 'Virtual Realiy',
      'author': 'Satwik Pachino',
    },
    {
      'image': 'course_2.jpeg',
      'title': 'Flutter',
      'author': 'Jhon Doe',
    },
    {
      'image': 'course_3.jpeg',
      'title': 'React Native',
      'author': 'Cristiano Ronaldo',
    },
  ];
  List<Map<String, String>> dataTrending = [
    {
      'image': 'course_4.jpeg',
      'title': 'Machine Learning',
      'author': 'Naruto Uzumaki',
    },
    {
      'image': 'course_5.jpeg',
      'title': 'React Js',
      'author': 'Sasuke',
    },
    {
      'image': 'course_6.jpeg',
      'title': 'Gear 6th',
      'author': 'Monkey D luffy',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 0.9],
              colors: [
                dark,
                background,
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Row(
              children: [
                categoryItem("My Courses"),
                categoryItem("Trending"),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: selectedCategory == "My Courses"
                ? List.from(
                    dataCourse.map(
                      (data) => videoItem(data),
                    ),
                  )
                : List.from(
                    dataTrending.map(
                      (data) => videoItem(data),
                    ),
                  ),
          ),
        )
      ],
    );
  }

  Container videoItem(Map data) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: dark,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/${data['image']}',
              height: 100,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            data['title'],
            style: title,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data['author'],
            style: content.copyWith(
              color: secondary,
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector categoryItem(String categoryName) {
    bool isSelected = selectedCategory == categoryName;

    return GestureDetector(
      onTap: () => setState(() {
        selectedCategory = categoryName;
      }),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: isSelected
                ? BorderSide(
                    color: white,
                    width: 2,
                  )
                : BorderSide.none,
          ),
        ),
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        margin: EdgeInsets.only(right: defaultMargin),
        child: Text(
          categoryName,
          style: title.copyWith(
            color: isSelected ? white : secondary,
          ),
        ),
      ),
    );
  }
}
