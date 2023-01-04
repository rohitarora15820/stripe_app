import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stripe_app/controller/payment_cpntroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PaymentController _paymentController = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Stripe Payment'),
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        _paymentController.makePayment(
                            amount: '1', currency: 'INR');
                      },
                      child: Text('Make Payment')))
            ]),
      ),
    ));
  }
}
