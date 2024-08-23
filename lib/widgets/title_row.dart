import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget titleRow({title,onPress}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      normalText(
          name: title,
          font: "Poppins",
          size: 14.0,
          weight: FontWeight.w500),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          normalText(
              name: "View All",
              font: "Poppins",
              size: 14.0,
              underline: TextDecoration.underline),
          5.widthBox,
          Container(
            decoration: BoxDecoration(
                color: buttonBlue, borderRadius: BorderRadius.circular(20)),
            height: 24,
            width: 24,
            child: const Icon(
              Icons.arrow_right_alt_sharp,
              color: white,
            ),
          )
        ],
      ).onTap(()=>onPress),
    ],
  );
}
