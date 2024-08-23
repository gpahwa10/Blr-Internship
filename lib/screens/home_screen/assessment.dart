import 'package:assessment/consts/consts.dart';
import 'package:assessment/screens/healthAssessScreen/health_screen.dart';
import 'package:assessment/widgets/assessment_widget.dart';
import 'package:assessment/widgets/normal_text.dart';

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(21),
      child: Scaffold(
        backgroundColor: appointmentBgGrey,
        body: Column(
          children: [
            assessmentTab(
                image: imgFitness,
                title: fitAssess,
                desc: fitAssessDesc,
                gradColor: skinGradient),
            assessmentTab(
                image: imgPerson,
                title: healthAssess,
                desc: healtAssessDesc,
                gradColor: greenGradient,
                onPress: () {
                  Get.to(
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                      const HealthRiskAssessmentScreen());
                }),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: buttonBlue),
                onPressed: () {},
                child: normalText(name: "View All", color: white))
          ],
        ),
      ),
    );
  }
}
