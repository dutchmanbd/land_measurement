import 'dart:math' as math;

class Triangle {
  double a;
  double b;
  double c;

  double s = 0.0; // half perimeter
  double area = 0.0;

  Triangle({
    required this.a,
    required this.b,
    required this.c,
  });

  double calculateArea() {
    s = (a + b + c) / 2.0;
    area = math.sqrt(
        (s * (s - a) * (s - b) * (s - c))); // sqrt(s * (s-a) * (s-b) * (s-c))
    return area;
  }
}
