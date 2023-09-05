import 'package:flutter/material.dart';

class BoxCounterButton extends StatefulWidget {
  const BoxCounterButton({Key? key}) : super(key: key);

  @override
  BoxCounterButtonState createState() => BoxCounterButtonState();

}

class BoxCounterButtonState extends State<BoxCounterButton> {

  
    int count = 0;

  @override
  Widget build(BuildContext context) {


    void countUp() {
      setState(() {
        count++;
      });
    }

    return Padding(
      padding: const EdgeInsets.all(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("$count"),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange
          ),
          child: IconButton(
            icon: const Icon(Icons.plus_one, color: Colors.white,),
            onPressed: () {
              countUp();
            },
          ),
        )
      ]),
      );

  }
}