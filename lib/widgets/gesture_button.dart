import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

class CustomTabBar extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final selectedIndex;
  final ValueChanged<int> onTabChange;
  const CustomTabBar(
      {super.key, required this.selectedIndex, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth - 75,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: tabBarGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: selectedIndex == 0
                ? Alignment.centerLeft
                : Alignment.centerRight,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            child: Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () =>onTabChange(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: normalText(
                        name: assessment,
                        color: selectedIndex == 0 ? nameBlue : grey2,
                        weight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () =>onTabChange(1),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: normalText(
                        name: appointment,
                        color: selectedIndex == 1 ? nameBlue : grey2,
                        weight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
