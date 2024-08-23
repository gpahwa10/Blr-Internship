import 'package:assessment/consts/consts.dart';
import 'package:assessment/consts/lists.dart';
import 'package:assessment/controller/UserController.dart';
import 'package:assessment/screens/auth_screens/login_screen.dart';
import 'package:assessment/screens/home_screen/appointment.dart';
import 'package:assessment/screens/home_screen/assessment.dart';
import 'package:assessment/widgets/challenge_widget.dart';
import 'package:assessment/widgets/gesture_button.dart';
import 'package:assessment/widgets/normal_text.dart';
import 'package:assessment/widgets/person_widget.dart';
import 'package:assessment/widgets/title_row.dart';
import 'package:assessment/widgets/workout_routines.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        ()=> normalText(
                          name: "Hello ${userController.username.value}",
                          color: nameBlue,
                          font: "Poppins",
                          size: 24.0,
                          weight: FontWeight.w600,
                          height: 26.4 / 24.0,
                        ),
                      ),
                      profileIcon(onPress: () => Get.to(LoginPage()))
                    ],
                  ),
                ),
                10.heightBox,
                Center(
                  child: CustomTabBar(
                    selectedIndex: selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
                20.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 323,
                    width: 338,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        final offset = selectedIndex == 0
                            ? const Offset(-1.0, 0.0) // Slide from left
                            : const Offset(1.0, 0.0); // Slide from right

                        final slideTransition = SlideTransition(
                          position: Tween<Offset>(
                            begin: offset,
                            end: Offset.zero,
                          ).animate(CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeInOut, // Ease-in-out curve
                          )),
                          child: child,
                        );

                        final fadeTransition = FadeTransition(
                          opacity: animation,
                          child: slideTransition,
                        );

                        return fadeTransition;
                      },
                      child: selectedIndex == 0
                          ? const AssessmentScreen(key: ValueKey(0))
                          : const AppointmentScreen(key: ValueKey(1)),
                    ),
                  ),
                ),
                10.heightBox,
                titleRow(title: "Challenges"),
                10.heightBox,
                challengeWidget(),
                10.heightBox,
                titleRow(title: "Workout Routines"),
                10.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        2,
                        (index) => workRoutineTab(
                            title: workoutRoutineTiles[index],
                            desc: "Full Body",
                            image: workoutRoutineImages[index],
                            gradColor: const Color(0xffFCE2BC))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
