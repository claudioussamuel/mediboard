import 'package:flutter/material.dart';

class MedCard extends StatefulWidget {
  const MedCard({
    super.key,
    required this.text,
    required this.day,
  });

  final String text, day;
  @override
  State<MedCard> createState() => _MedCardState();
}

class _MedCardState extends State<MedCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          elevation: 2,
          color: Colors.white,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 11, left: 11),
                  child: Text(
                    //,
                    widget.text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Text(
                    //,
                    widget.day,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.sunny_snowing,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.wb_sunny_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.brightness_3_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
