import 'package:assessment/consts/consts.dart';
import 'package:assessment/consts/lists.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget benefitsMethod() {
  return Center(
    child: Container(
      width: 337,
      height: 139,
      decoration: BoxDecoration(
        color: const Color(0xffFAFCFF),
        border: Border.all(width: 1, color: const Color(0xffE6E6E6)),
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(benefitsList.length, (index) {
            return normalText(
              color: black,
              font: "Poppins",
              size: 12.0,
              weight: FontWeight.w400,
              name: '${index + 1}. ${benefitsList[index]}',
            );
          }),
        ),
      ),
    ),
  );
}
