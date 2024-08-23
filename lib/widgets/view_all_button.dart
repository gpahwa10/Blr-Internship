import 'package:assessment/consts/consts.dart';
import 'package:assessment/widgets/normal_text.dart';

Widget viewAllButton(){
  return ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: buttonBlue),
                onPressed: () {},
                child: normalText(name: "View All", color: white));
}