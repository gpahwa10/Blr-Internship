import 'package:assessment/consts/consts.dart';
import 'package:assessment/consts/lists.dart';
import 'package:assessment/widgets/normal_text.dart';
Widget buildHowDoWeDoIt() {
  return Column(
    children: [
      Transform.translate(
        offset: const Offset(20, -35),
        child: Image.asset(imglappyfit),
      ),
      Container(
        height: 31,
        width: 321,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0x1A00BF4D),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imgsecurity,
              height: 15,
              width: 13,
            ),
            10.widthBox,
            normalText(
              font: "Poppins",
              weight: FontWeight.w500,
              size: 11.0,
              name: "We do not store or share your personal data",
              color: const Color(0xff707070),
            ),
          ],
        ),
      ),
      10.heightBox,
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(howWeDoItPoints.length, (index) {
          return normalText(
            color: black,
            font: "Poppins",
            size: 12.0,
            weight: FontWeight.w400,
            name: '${index + 1}. ${howWeDoItPoints[index]}',
          );
        }),
      )
    ],
  );
}