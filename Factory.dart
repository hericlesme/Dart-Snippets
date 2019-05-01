import 'dart:math';

/**
* abstract class Shape {
*   num get area;
* }
*/

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

// Factory as a function
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

// Factory as constructor
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');
  
  try {
    final error = shapeFactory('error');
  } catch (e) {
    print(e);
  }

  print(circle.area);
  print(square.area);
}
