import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripe_app/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      "pk_test_51MMcCbSCj0owPEVszUkosRGfdERujEkuw8BpckQmZvFmpuy2nVID0D0Yx8ZI6K4T4FX7mC7hDfneTKOje6fYIl0O00fB3y1fqI";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => HomePage())],
    );
  }
}
