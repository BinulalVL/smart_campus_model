import 'package:flutter/material.dart';
import 'package:project_class/Themes/theme_data.dart';

class CircularContainer extends StatelessWidget {
   CircularContainer({super.key,required this.color,required this.text});
 final String? text;
 final Color? color;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  Container(
      height: height/16,
      width: height/16,
      decoration: BoxDecoration(color:color,borderRadius: BorderRadius.all(Radius.circular(100))),
      child: Center(child: Text(text!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))),
    );
  }
}
