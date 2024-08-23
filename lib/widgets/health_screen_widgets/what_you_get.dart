import "package:assessment/consts/consts.dart";
import "package:assessment/widgets/whatget_widget.dart";

Widget buildWhatYouGetRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      whatGet(title: "Key Body\n Vitals", image: imgheart),
      whatGet(title: "Posture \nAnalysis", image: imgposture),
      whatGet(title: "Body \nComposition", image: imgGroup),
      whatGet(title: "Instant\nReports", image: imgmessage),
    ],
  );
}
