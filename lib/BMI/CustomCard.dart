
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color bgColor;
  final icon;
  final title;
  final content;
  CustomCard({required this.bgColor, this.icon, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    Container container = new Container();

    if(content == null) {
      container = Container(
        padding: EdgeInsets.only(top: 20),
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Icon(icon, size: 80,)
          ],
        ),
      );
    } else {
      container = Container(
        padding: EdgeInsets.only(top: 20),
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text(content, style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),),
          ],
        ),
      );
    }
    return container;
  }
}
