import 'package:assignment_skeleton/models/database.dart';
import 'package:assignment_skeleton/ui/questions_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Level"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return QuestionsScreen(levelQuestions: level1);
                      }));
                    },
                    child: Text("Level 1"))),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return QuestionsScreen(levelQuestions: level2);
                      }));
                    },
                    child: Text("Level 2"))),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return QuestionsScreen(levelQuestions: level3);
                      }));
                    },
                    child: Text("Level 3"))),
          ],
        ),
      ),
    );
  }
}
