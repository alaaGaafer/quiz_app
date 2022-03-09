import 'package:flutter/material.dart';
import 'package:new_task/screens/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('background1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Quizzlez',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text('Lets play!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text('play now and level up',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo,
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: RawMaterialButton(
                      onPressed: () {
                        //Navigating the the Quizz Screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizScreen(),
                            ));
                      },
                      child: Text(
                        "Start the Quizz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
