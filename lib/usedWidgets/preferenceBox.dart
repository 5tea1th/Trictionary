import 'package:flutter/material.dart';

class PreferenceBox extends StatefulWidget {
  PreferenceBox({required this.imagePreference, required this.textPreference});
  final String imagePreference;
  final String textPreference;
  @override
  State<PreferenceBox> createState() => _PreferenceBoxState();
}

class _PreferenceBoxState extends State<PreferenceBox> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChanged = !isChanged;
        });
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 100.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(widget.imagePreference),
                fit: BoxFit.fill,
              ),
            ),
          ),
          CheckboxListTile(
            activeColor: Colors.green,
            title: Center(child: Text(widget.textPreference)),
              value: isChanged,
              onChanged: (bool? value) {
                setState(() {
                  isChanged = value!;
                });
              }),
        ],
      ),
    );
  }
}
