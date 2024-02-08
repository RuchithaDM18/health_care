import 'package:flutter/material.dart';
import 'package:health_care/screens/doctor/TodaysAppointment.dart';
import 'package:path_provider/path_provider.dart';  // Import path_provider package
import 'package:health_care/screens/doctor/DoctorDashboard.dart';
import 'package:health_care/screens/doctor/doctor_login_screen.dart';
import 'package:health_care/screens/patient.dart';
import 'package:health_care/services/firebase_service.dart';
import 'package:twilio_flutter/twilio_flutter.dart';


void main() async {
  await FirebaseService.initializeFirebase();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Patient Form',
        home: DashboardScreen(),
      ),
    );
  }
}
