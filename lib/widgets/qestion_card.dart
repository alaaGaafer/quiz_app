import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  String question;
  QuestionCard(this.question);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20,right: 15),
      child: Container(
        width: 290,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.indigo,
        ),
        child: Text(question,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        ),
      ),
    );
  }
}