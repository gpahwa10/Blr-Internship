import 'package:assessment/consts/consts.dart';
import 'package:assessment/screens/auth_screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyApQzHITauln1hmQcf7C_eGrynw6_HvI0Q',
    appId: '1:258084177864:android:a349274191489bdf03a2fd',
    messagingSenderId: '258084177864	',
    projectId: 'healthapp-12e98',
    storageBucket: 'healthapp-12e98.appspot.com',
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: white,
          appBarTheme: const AppBarTheme(color: white)),
      home: LoginPage(),
    );
  }
}
