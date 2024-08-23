import 'package:assessment/consts/consts.dart';

Widget normalText({name, color, font, weight, size, height,underline}) {
  return Text(
    name,
    style: TextStyle(
      decoration: underline,
      fontFamily: font,
      fontSize: size,
      fontWeight: weight,
      height: height,
      color: color,
    ),
  );
}
