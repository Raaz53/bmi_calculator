import 'package:flutter/material.dart';

import '../common/styling.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer(
      {super.key, required this.imageLocation, required this.gender});
  final String imageLocation;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imageLocation,
        ),
        Text(
          gender,
          style: Styling.contentTextStyle,
        ),
      ],
    );
  }
}
