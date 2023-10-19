
import 'package:baseapp/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AavartanPage extends StatelessWidget {
  const AavartanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListEventScreen(
        events: List.generate(20, (index) => Events(title: 'event ${index+1}', desc: 'This is event description for event ${index+1}')),
      ),
    );
  }
}