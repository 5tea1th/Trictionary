import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trictionary/screens/home_screen.dart';
import '../usedWidgets/preferenceBox.dart';

class QuestionPage extends StatefulWidget {
  static String id = 'question_screen';
  const QuestionPage({super.key});
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Preferences'),
        actions: [TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, HomeScreen.id);
          },
          child: Text('Done'),
        ),
    ]
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'images/River Rafting_1376979458 (1).jpg',
                    textPreference: 'Rafting',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
