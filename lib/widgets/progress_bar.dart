import "package:assessment/consts/consts.dart";

Widget progressBar() {
  return Container(
    width: 161, 
    height: 9, 
    decoration: BoxDecoration(
      color: white, 
      borderRadius: BorderRadius.circular(5),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: const LinearProgressIndicator(
        value: 0.5,
        backgroundColor: white,
        valueColor:
            AlwaysStoppedAnimation<Color>(progressBarPink), // Progress color
      ),
    ),
  );
}
