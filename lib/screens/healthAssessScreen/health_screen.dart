import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/health_screen_widgets/bottom_container.dart';
import 'package:assessment/widgets/health_screen_widgets/top_container.dart';

class HealthRiskAssessmentScreen extends StatelessWidget {
  const HealthRiskAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            topConatiner(),
            bottomContainer(),
          ],
        ),
      ),
    );
  }
}
