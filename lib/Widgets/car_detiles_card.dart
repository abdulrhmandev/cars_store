import 'package:flutter/material.dart';

class CarDetilesCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
