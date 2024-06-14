import 'package:bmi_calculator/common/image_location.dart';
import 'package:bmi_calculator/common/styling.dart';
import 'package:bmi_calculator/widget/gender_container.dart';
import 'package:bmi_calculator/widget/variable_container.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget(
      {super.key,
      this.imageLocation,
      this.gender,
      this.labelText,
      required this.value,
      required this.onChangedValue});
  final String? imageLocation;
  final String? gender;
  final String? labelText;
  final int value;
  final ValueChanged<int> onChangedValue;

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
            padding: const EdgeInsets.all(30),
            color: Styling.containerColor,
            child: widget.gender == null
                ? VariableContainer(
                    labelText: widget.labelText!,
                    onValueChanged: widget.onChangedValue,
                    value: widget.value,
                  )
                : GenderContainer(
                    imageLocation: widget.imageLocation!,
                    gender: widget.gender!)),
      ),
    );
  }
}
