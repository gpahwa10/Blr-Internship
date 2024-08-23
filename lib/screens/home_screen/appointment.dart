import 'package:assessment/consts/consts.dart';
import 'package:assessment/consts/lists.dart';
import 'package:assessment/widgets/appointment_tab.dart';
import 'package:assessment/widgets/view_all_button.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(21),
      child: Scaffold(
        backgroundColor: appointmentBgGrey,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return appointmentTab(title: appointmentTypeList[index],image: appointTypeIcon[index],color: appointTypeColor[index]);
                    }),
              ),
              viewAllButton()
            ],
          ),
        ),
      ),
    );
  }
}
