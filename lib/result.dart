import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _restart;
  final int _totalScore;

  Result(this._restart, this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      child: Column(
        children: [
          Text(
            "No More Queations, Your Score is: ",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            _totalScore.toString(),
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: _restart, child: Text("Restart")),
        ],
      ),
    );
  }
}
