import 'package:flutter/material.dart';
import 'package:land_measurement/data/models/area.dart';
import 'package:land_measurement/data/models/triangle.dart';
import 'package:land_measurement/presentation/widgets/my_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Triangle hp1 = Triangle(a: 0.0, b: 0.0, c: 0.0);
  Triangle hp2 = Triangle(a: 0.0, b: 0.0, c: 0.0);
  late Area area;
  double areaInSqFt = 0.0;
  double areaInDecimal = 0.0;
  double areaInKatha = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Land Measurement")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MyTextField(
                    hintText: "A1",
                    inputType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        hp1.a = double.parse(value);
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: MyTextField(
                    hintText: "A2",
                    inputType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        hp2.a = double.parse(value);
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MyTextField(
                    hintText: "B1",
                    inputType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        hp1.b = double.parse(value);
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: MyTextField(
                    hintText: "B2",
                    inputType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        hp2.b = double.parse(value);
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MyTextField(
                    hintText: "C",
                    inputType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        hp1.c = double.parse(value);
                        hp2.c = hp1.c;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  area = Area(hp1: hp1, hp2: hp2);
                  areaInSqFt = area.areaInSqFt();
                  areaInDecimal = area.areaInDecimal();
                  areaInKatha = area.areaInKatha();
                });
              }),
              child: const SizedBox(
                width: 300,
                child: Center(
                  child: Text("Calculate"),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Area In Square Feet: ${areaInSqFt.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Area In Decimal: ${areaInDecimal.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Area In Katha: ${areaInKatha.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
