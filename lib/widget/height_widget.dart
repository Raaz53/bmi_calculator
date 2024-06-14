import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/styling.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({
    super.key,
    required this.onValueChanged,
    required this.heightInCm,
  });

  final double heightInCm;
  final ValueChanged<double> onValueChanged;

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        color: Styling.containerColor,
        height: 189,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HEIGHT",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Slider(
              value: widget.heightInCm,
              onChanged: widget.onValueChanged,
              label: widget.heightInCm.round().toString(),
              min: 0,
              max: 250,
              divisions: 250,
            )
          ],
        ),
      ),
    );
  }
}
