import 'package:assessment/consts/consts.dart';

Widget appointmentTab({title, image, color ,onPress}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 113,
      width: 147,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: white,
            radius: 27,
            child: Image.asset(
              image,
              height: 35.43,
              width: 32,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: appointmentText,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ).onTap(() => onPress),
  );
}
