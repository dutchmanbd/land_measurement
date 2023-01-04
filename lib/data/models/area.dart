import 'package:land_measurement/data/models/triangle.dart';
import 'package:land_measurement/utils/constant.dart';

class Area {
  final Triangle hp1;
  final Triangle hp2;
  Area({
    required this.hp1,
    required this.hp2,
  });

  double areaInSqFt() {
    return hp1.calculateArea() + hp2.calculateArea();
  }

  double areaInDecimal() {
    return areaInSqFt() / Constant.oneDecimal;
  }

  double areaInKatha() {
    return areaInDecimal() / Constant.oneKatha;
  }
}
