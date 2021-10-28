import 'package:ecommerce_app2/screens/complete_profile/complete_profile_components/complete_profile_components.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: const Body(),
    );
  }
}
