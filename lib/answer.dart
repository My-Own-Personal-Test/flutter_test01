import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String theAnswer;

  Answer(this.selectHandler, String this.theAnswer);
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber,
        child: Text(theAnswer),
        onPressed: selectHandler,
      ),
    );
  }
}
