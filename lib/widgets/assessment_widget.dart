import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget assessmentTab({image, title, desc, gradColor, onPress}) {
  return Container(
    height: 116,
    width: 315,
    margin: const EdgeInsets.all(10),
    decoration:
        BoxDecoration(color: white, borderRadius: BorderRadius.circular(11)),
    child: Row(
      children: [
        Container(
          height: 116,
          width: 133,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(11), bottomLeft: Radius.circular(11)),
            gradient: gradColor,
          ),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 111,
              width: 93,
            ),
          ),
        ),
        15.widthBox,
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              normalText(
                  name: title,
                  size: 14.0,
                  weight: FontWeight.bold,
                  color: black),
              4.heightBox,
              normalText(name: desc, size: 10.0, color: black),
              TextButton.icon(
                onPressed: onPress,
                icon: const Icon(
                  Icons.play_circle_fill,
                  color: nameBlue,
                ),
                label: normalText(
                    name: start,
                    size: 16.0,
                    weight: FontWeight.bold,
                    color: nameBlue),
              )
            ],
          ),
        ))
      ],
    ),
  );
}
