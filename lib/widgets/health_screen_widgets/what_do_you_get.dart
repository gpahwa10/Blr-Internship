import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/health_screen_widgets/how_we_do_it.dart';


Widget buildMethodContainer() {
  return Center(
    child: Container(
      width: 337,
      height: 350,
      decoration: BoxDecoration(
        color: const Color(0xffFAFCFF),
        border: Border.all(width: 1, color: const Color(0xffE6E6E6)),
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: buildHowDoWeDoIt(),
    ),
  );
}


