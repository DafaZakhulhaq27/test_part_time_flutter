import 'package:flutter/material.dart';
import 'package:test_parttime_flutter/theme.dart';

class TopEducatorSection extends StatelessWidget {
  const TopEducatorSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataEducator = [
      {
        'image': 'people_1.jpeg',
        'teacher': 'Jiraya',
        'course_amount': 3,
      },
      {
        'image': 'people_2.jpeg',
        'teacher': 'Hatake Kakashi',
        'course_amount': 12,
      },
      {
        'image': 'people_3.jpeg',
        'teacher': 'Moneky D Grap',
        'course_amount': 24,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Text(
            'Top Educator',
            style: h2,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.from(
              dataEducator.map(
                (data) => educatorItem(data),
              ),
            ),
          ),
        )
      ],
    );
  }

  Container educatorItem(Map data) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        color: dark,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'assets/images/${data['image']}',
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            data['teacher'],
            style: title.copyWith(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '${data['course_amount']} Courses',
            style: title.copyWith(
              fontSize: 10,
              color: secondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
