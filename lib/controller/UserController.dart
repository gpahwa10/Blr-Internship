import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var username = 'User'.obs;
  var isLoading = false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    _fetchUserName();
  }

  Future<void> _fetchUserName() async {
  var user = _auth.currentUser;
  if (user != null) {
    String uid = user.uid;
    isLoading.value = true;

    try {
      DocumentSnapshot userDoc = await _firestore.collection('users').doc(uid).get();
      if (userDoc.exists) {
        // Safely access the 'name' field
        Map<String, dynamic>? data = userDoc.data() as Map<String, dynamic>?;
        username.value = data?['Name'] ?? 'User';
      }
    } catch (e) {
      print('Error fetching user data: $e');
    } finally {
      isLoading.value = false;
    }
  }
}


  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _fetchUserName();
    } catch (e) {
      print('Login error: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
