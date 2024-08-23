import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
User? currentUser = auth.currentUser;

//collections
const assessmentCollection = "My Assessments";
const userCollection = "users";
const appointmentCollection = "My Appointments";
const challengeCollection = "Challenges";
const workoutCollection = "Workout Routines";
