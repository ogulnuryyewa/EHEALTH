import 'package:bookinghealth/ugurlar.dart';
import 'package:flutter/material.dart';

class Doktorlar extends StatefulWidget {
  const Doktorlar({super.key});

  @override
  State<Doktorlar> createState() => _DoktorlarState();
}

class _DoktorlarState extends State<Doktorlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Ugurlar().myappbar(context),
    );
  }
}
