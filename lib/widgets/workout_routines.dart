import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget workRoutineTab({image, title, desc, gradColor}) {
  return Container(
    height: 112,
    width: 250,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: workoutTabWhite, width: 1.0)),
    child: Row(
      children: [
        Container(
          height: 110,
          width: 109,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            color: Color(0xffFCE2BC),
          ),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        15.widthBox,
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                normalText(
                    name: title,
                    size: 14.0,
                    weight: FontWeight.w500,
                    font: "Poppins",
                    color: const Color(0xff303030)),
                normalText(
                    name: desc,
                    size: 10.0,
                    color: const Color(0xff666666),
                    weight: FontWeight.w400,
                    font: "Poppins"),
              ],
            ),
            Container(
              width: 66,
              height: 21,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: workoutTabWhite)),
              child: Center(
                  child: normalText(
                      name: "Loose Weight",
                      color: nameBlue,
                      size: 8.0,
                      font: "Poppins",
                      weight: FontWeight.w600)),
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Difficulty: ",
                  style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: "Medium",
                  style: TextStyle(
                      color: Color(0xffFF88A5),
                      fontSize: 10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600))
            ]))
          ],
        ))
      ],
    ),
  );
}
