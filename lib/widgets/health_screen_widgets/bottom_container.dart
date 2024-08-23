import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/health_screen_widgets/assessment_button.dart';
import 'package:assessment/widgets/health_screen_widgets/benefits.dart';
import 'package:assessment/widgets/health_screen_widgets/what_do_you_get.dart';
import 'package:assessment/widgets/health_screen_widgets/what_you_get.dart';
import 'package:assessment/widgets/normal_text.dart';


Widget bottomContainer() {
  return Transform.translate(
    offset: const Offset(0, -90),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(26),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            normalText(
              name: "What Do You Get?",
              color: const Color(0xff222E58),
              size: 15.0,
              font: "Poppins",
              weight: FontWeight.w600,
            ),
            10.heightBox,
            buildWhatYouGetRow(),
            30.heightBox,
            normalText(
              name: "How We Do It?",
              color: const Color(0xff222E58),
              size: 15.0,
              font: "Poppins",
              weight: FontWeight.w600,
            ),
            20.heightBox,
            buildMethodContainer(),
            20.heightBox,
            normalText(
              name: "Benefits",
              color: const Color(0xff222E58),
              size: 15.0,
              font: "Poppins",
              weight: FontWeight.w600,
            ),
            20.heightBox,
            benefitsMethod(),
            20.heightBox,
            startAssessmentButton(),
          ],
        ),
      ),
    ),
  );
}

