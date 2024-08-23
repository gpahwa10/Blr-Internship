import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget topConatiner() {
  return Container(
    width: double.infinity,
    height: 375,
    decoration: const BoxDecoration(gradient: lightGreenGradient),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  color: const Color(0xff3A3937),
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_sharp),
                ),
                25.heightBox,
                normalText(
                  name: "Health Risk \nAssessment",
                  size: 24.0,
                  font: "Poppins",
                  weight: FontWeight.w600,
                  color: const Color(0xff222E58),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 62,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.timer_sharp,
                        size: 11,
                        color: Color(0xff222E58),
                      ),
                      const SizedBox(width: 5),
                      normalText(
                        name: "4 min",
                        color: const Color(0xff222E58),
                        weight: FontWeight.w500,
                        font: "Poppins",
                        size: 11.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            imgPerson,
            width: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ),
  );
}
