import 'package:bmi_calculator/common/image_location.dart';
import 'package:bmi_calculator/common/styling.dart';
import 'package:bmi_calculator/screen/result_page.dart';
import 'package:bmi_calculator/widget/container_widget.dart';
import 'package:bmi_calculator/widget/height_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heightInCm = 30;
  int weight = 20;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styling.containerColor,
        centerTitle: true,
        title: const AppBarTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWidget(
                  imageLocation: ImageLocation.femaleImage,
                  gender: 'FEMALE',
                  onChangedValue: (int value) {},
                  value: 0,
                ),
                ContainerWidget(
                  imageLocation: ImageLocation.maleImage,
                  gender: 'MALE',
                  onChangedValue: (int value) {},
                  value: 0,
                ),
              ],
            ),
            HeightWidget(
              heightInCm: heightInCm,
              onValueChanged: (newValue) {
                setState(() {
                  heightInCm = newValue;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWidget(
                  labelText: 'WEIGHT',
                  onChangedValue: (int value) {
                    setState(() {
                      weight = value;
                    });
                  },
                  value: weight,
                ),
                const SizedBox(width: 10),
                ContainerWidget(
                  labelText: 'AGE',
                  onChangedValue: (int value) {
                    setState(() {
                      age = value;
                    });
                  },
                  value: age,
                ),
              ],
            ),
            SizedBox(height: AppSizes.p100),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          print('object weight: $weight, age: $age , height = $heightInCm');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(
                        height: heightInCm,
                        weight: weight,
                      )));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child:
              Center(child: Text('CALCULATE', style: Styling.contentTextStyle)),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'BMI calculator',
      style: GoogleFonts.roboto(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}

class AppSizes {
  static double p100 = 100;
}
