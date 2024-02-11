
import 'package:flutter/material.dart';
import 'package:flutter_apps/constants.dart';
import 'InputPage.dart';

class CustomCard extends StatelessWidget {
  final Color bgColor;
  final icon;
  final title;
  final content;
  final childrenContent;
  const CustomCard({super.key, required this.bgColor, this.icon, this.title, this.content, this.childrenContent});

  @override
  Widget build(BuildContext context) {
    Container container = Container();

    if(content == null) {
      container = Container(
        padding: const EdgeInsets.only(top: 20),
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            Icon(icon, size: 80,),
          ],
        ),
      );
    } else {
      container = Container(
        padding: const EdgeInsets.only(top: 20),
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 15),),
            const SizedBox(height: 10,),
            Text(content, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
            childrenContent
          ],
        ),
      );
    }
    return container;
  }
}

class CustomIconButton extends StatelessWidget {
  final size;
  final icon;
  final onClick;
  const CustomIconButton({this.size, this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        color: inactiveCardColor,
      ),
      child: IconButton(
        alignment: Alignment.center,
        onPressed: onClick,
        icon: Icon(
          icon,
        ),
      ),
    );
  }
}