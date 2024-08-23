import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';
import 'package:assessment/widgets/progress_bar.dart';

Widget challengeWidget() {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffC1EAD1),
      ),
      height: 129,
      width: 338,
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    normalText(
                        name: "Today's Challenge",
                        font: "Poppins",
                        size: 12.0,
                        weight: FontWeight.w600,
                        color: challengeGreen),
                    Container(
                      height: 18,
                      width: 84,
                      decoration: BoxDecoration(
                          color: const Color(0xff2B7A71),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: normalText(
                              name: "Push Ups 20x",
                              size: 10.0,
                              color: white,
                              weight: FontWeight.w500)),
                    ),
                    progressBar(),
                    const Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "10/20 ",
                          style: TextStyle(
                              fontSize: 10.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: "Completed",
                          style: TextStyle(
                              fontSize: 10.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400))
                    ])),
                    SizedBox(
                      height: 27,
                      width: 98,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: white,
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_fill,
                          color: nameBlue,
                        ),
                        label: normalText(
                          name: "Continue",
                          size: 12.0,
                          color: nameBlue,
                          font: "Poppins",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 0,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(3.14159),
              child: Image.asset(
                imgPushup,
                width: 200,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
