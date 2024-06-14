import 'package:bmi_calculator/common/bmi_calculation.dart';
import 'package:bmi_calculator/common/styling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.weight, required this.height});

  final int weight;
  final double height;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late double calculatedBmi;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculatedBmi = BmiCalculation.bmi(widget.weight, widget.height / 100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Your Result',
          style: GoogleFonts.roboto(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            color: Styling.containerColor,
            height: 535,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          BmiCalculation.condition(calculatedBmi),
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 35),
                        ),
                        Text(
                          calculatedBmi.toStringAsFixed(2),
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Nothing to worry',
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
