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
                    imagePreference: 'https://media.istockphoto.com/id/516449022/photo/lady-with-kayak.jpg?s=612x612&w=0&k=20&c=Yp-rzpmY_hbhpbTE38z6toouRKW-lAEN-ZvuWvH8kKE=',
                    textPreference: 'Kayaking',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'https://media.istockphoto.com/id/547436912/photo/bungee-jumping.jpg?s=612x612&w=0&k=20&c=yGAdtv_o5h9uzsLhHFxU9al_H-3EzgSCuqRiJ9Hq08A=',
                    textPreference: 'Bungee Jumping',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'https://media.istockphoto.com/id/516984446/photo/varanasi-burning-grounds-at-night.jpg?s=612x612&w=0&k=20&c=CbX2ZyMPKpOQMBXyth3FIDSR0yqciYmfKfSYtBJeEDs=',
                    textPreference: 'Temples North',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'https://media.istockphoto.com/id/614963888/photo/madurai-temple.jpg?s=612x612&w=0&k=20&c=DsQA3jxKCY-nPESfzGsrd1EZlM5fIs8Xu1WyXQOcfHU=',
                    textPreference: 'Temples South',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'https://media.istockphoto.com/id/483561330/photo/ellora-caves-buddhist-temples-in-arrangabad-india.jpg?s=612x612&w=0&k=20&c=HOf2tcJJRrlEbFUuV62VOTAWMpEn2r6_L5629TkO504=',
                    textPreference: 'Caves',
                  ),
                ),
                Expanded(
                  child: PreferenceBox(
                    imagePreference: 'https://media.istockphoto.com/id/629821246/photo/kailas-temple-in-ellora-caves-complex-in-india.jpg?s=612x612&w=0&k=20&c=ei3N4dugQCPoifA-fE5aDIcgkGqkQgQ2_ASvdxxVnV0=',
                    textPreference: 'Historical Sites',
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
