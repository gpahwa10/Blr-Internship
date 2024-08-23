import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget startAssessmentButton() {
  return Center(
    child: Container(
      height: 57,
      width: 305,
      decoration: const BoxDecoration(
          color: Color(0xff255FD5),
          borderRadius: BorderRadius.all(Radius.circular(28.5))),
      child: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.play_arrow_sharp,
            color: Color(0xffFCFCFF),
          ),
          label: normalText(
              name: "Start Assessment",
              size: 17.0,
              font: "Poppins",
              weight: FontWeight.w500,
              color: const Color(0xffFCFCFF))),
    ),
  );
}