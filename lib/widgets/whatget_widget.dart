import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget whatGet({title, image}) {
  return Column(
    children: [
      Container(
        height: 68.91,
        width: 68.91,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: const Color(0xffE8E9ED)),
            color: white,
            borderRadius: BorderRadius.circular(45)),
        child: Center(
          child: Image.asset(
            image,
            height: 29.5,
            width: 34,
          ),
        ),
      ),
      normalText(
          color: const Color(0xff303030),
          name: title,
          font: "Poppins",
          size: 8.0,
          weight: FontWeight.w600)
    ],
  );
}
