import 'package:assessment/consts/firebase_const.dart';

class Services {
  static getWorkoutRoutines({uid}) {
    return firestore
        .collection(workoutCollection)
        .where('user', isEqualTo: uid)
        .snapshots();
  }
  static getAppointments({uid}) {
    return firestore
        .collection(appointmentCollection)
        .where('user', isEqualTo: uid)
        .snapshots();
  }

  static getAsessments() {
    return firestore.collection(workoutCollection).snapshots();
  }

  static getChallenge({uid}) {
    return firestore
        .collection(challengeCollection)
        .where('user', isEqualTo: uid)
        .snapshots();
  }
}
