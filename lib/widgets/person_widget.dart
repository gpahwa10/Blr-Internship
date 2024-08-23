import 'package:assessment/consts/consts.dart';

Widget profileIcon({onPress}) {
  return Container(
    height: 23.0,
    width: 23.0,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: iconGrey,
    ),
    child: Center(
      child: Container(
        width: 18.94,
        height: 18.94,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: white),
          shape: BoxShape.circle,
          color: iconGrey,
        ),
        child: const Icon(
          Icons.person_sharp,
          color: white,
          size: 14.0,
        ).onTap(()=>onPress),
      ),
    ),
  );
}
