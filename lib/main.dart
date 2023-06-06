import 'package:flutter/material.dart';
import 'package:solace/conselor.dart';
import 'package:solace/dashboard.dart';
import 'package:solace/feedback.dart';
import 'package:solace/login.dart';
import 'package:solace/notifications.dart';
import 'package:solace/profile.dart';
import 'package:solace/settings.dart';
import 'package:solace/support.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan tulisan debug pada aplikasi
      debugShowCheckedModeBanner: false,

      //initial route ke login, berfungsi agar ketika
      //masuk ke aplikasi akan langsung ke route login
      initialRoute: '/login',

      //routes berfungsi menginisiasi alamat dari semua page
      routes: {
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/conselor': (context) => ConselorPage(),
        '/profile': (context) => ProfilePage(),
        '/settings': (context) => SettingsPage(),
        '/notifications': (context) => NotificationsPage(),
        '/feedback': (context) => FeedbackPage(),
        '/support': (context) => SupportPage(),
      },
    );
  }
}
