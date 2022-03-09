import 'package:flutter/material.dart';
import '../models/Questions.dart';
import '../widgets/qestion_card.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text("skip"),
          )
        ],
      ),
      body: Build(),
    );
  }
}
class Build extends StatelessWidget {
  static int I=0;
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('download.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                QuestionCard(questions[index].question!),
                SizedBox(
                  height: 40,
                ),
                for (int i = 0; i < questions[index].answers!.length; i++)
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin:
                        EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: () {
     Navigator.push(context,MaterialPageRoute(builder: (context)=>questions[I]));I++;},
                      child: Text(
                        questions[index].answers!.keys.toList()[i],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
