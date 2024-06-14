import 'package:bmi_calculator/common/styling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VariableContainer extends StatefulWidget {
  const VariableContainer(
      {super.key,
      required this.labelText,
      required this.onValueChanged,
      required this.value});
  final String labelText;
  final int value;
  final ValueChanged<int> onValueChanged;

  @override
  State<VariableContainer> createState() => _VariableContainerState();
}

class _VariableContainerState extends State<VariableContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.labelText,
          style: Styling.contentTextStyle,
        ),
        Text(
          '${widget.value}',
          style: Styling.contentTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: IconButton(
                iconSize: 40,
                color: Colors.white,
                icon: const Icon(Icons.remove_circle),
                onPressed: () => widget.onValueChanged(widget.value - 1),
              ),
            ),
            Flexible(
              child: IconButton(
                  iconSize: 40,
                  color: Colors.white,
                  icon: const Icon(Icons.add_circle),
                  onPressed: () => widget.onValueChanged(widget.value + 1)),
            )
          ],
        )
      ],
    );
  }
}
