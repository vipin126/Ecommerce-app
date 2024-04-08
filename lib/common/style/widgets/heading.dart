import 'package:flutter/material.dart';

class heading extends StatelessWidget {
  heading({required this.text1, this.textt2 = "View all"});

  String text1;
  String textt2;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text1,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      GestureDetector(
        onTap: () {},
        child: Text(
          textt2,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      )
    ]);
  }
}
