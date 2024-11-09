import 'package:flutter/material.dart';
import '../screens/questions.dart';

class TopPicksContainer extends StatefulWidget {
  const TopPicksContainer({super.key, required this.imageLocation, required this.imageTitle, required this.imageSubTitle});
  final String imageLocation;
  final String imageTitle;
  final String imageSubTitle;

  @override
  State<TopPicksContainer> createState() => _TopPicksContainerState();
}

class _TopPicksContainerState extends State<TopPicksContainer> {
  bool heartClick = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        children: [
          GestureDetector(
            child: SizedBox(
              height: 200.0,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(widget.imageLocation,fit: BoxFit.fill,),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, QuestionPage.id);
            },
          ),
          ListTile(
            trailing: IconButton(
              highlightColor: Colors.pinkAccent[100],

              icon: Icon(
                heartClick ? Icons.favorite : Icons.favorite_border,
                color: heartClick ? Colors.pink : null,
              ),
              onPressed: () {
                setState(() {
                  heartClick;
                });
                if(heartClick){
                  heartClick=false;
                }
                else{
                  heartClick=true;
                }
              },
            ),
            title: Text(widget.imageTitle),
            subtitle: Text(widget.imageSubTitle),
          ),
        ],
      ),
    );
  }
}
