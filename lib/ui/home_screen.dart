import 'package:assignment_skeleton/models/database.dart';
import 'package:assignment_skeleton/ui/questions_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to false
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Container(
                  height: 100, // Specify the desired height
                  width: 100, // Specify the desired width
                  child: Image.asset(
                    "assets/logo.png",
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "MentalArif",
                  style: TextStyle(
                      fontFamily: 'Nunito', // Apply the 'Nunito' font
                      color: Colors.white, // Apply the desired color
                      fontSize: 36, // Apply the desired font size
                      fontWeight: FontWeight.w900// Apply extra bold
                  ),
                ),
                SizedBox(height: 80), // Add space between text and buttons
                SizedBox(
                  width: 240,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return QuestionsScreen(levelQuestions: level0);
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Level 0",
                      style: TextStyle(
                        fontFamily: 'Nunito', // Apply the 'Nunito' font
                        color: Color(0xFF6A5AE0), // Apply "6A5AE0" color
                        fontSize: 40,
                        fontWeight: FontWeight.bold, // Apply bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 240,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return QuestionsScreen(levelQuestions: level1);
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Level 1",
                      style: TextStyle(
                        fontFamily: 'Nunito', // Apply the 'Nunito' font
                        color: Color(0xFF6A5AE0), // Apply "6A5AE0" color
                        fontSize: 40,
                        fontWeight: FontWeight.bold, // Apply bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 240,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return QuestionsScreen(levelQuestions: level2);
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Level 2",
                      style: TextStyle(
                        fontFamily: 'Nunito', // Apply the 'Nunito' font
                        color: Color(0xFF6A5AE0), // Apply "6A5AE0" color
                        fontSize: 40,
                        fontWeight: FontWeight.bold, // Apply bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}