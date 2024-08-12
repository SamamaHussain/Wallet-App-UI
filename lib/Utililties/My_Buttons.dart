import 'package:flutter/material.dart';


class MyButtons extends StatelessWidget {
  final color;
  final String subtitle;
  final String path;
  const MyButtons({super.key, required this.color, required this.path,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey, blurRadius: 25,spreadRadius: 4,
            )
            ],
                  ),
                  height: 95,
                  child: Center(
                    child: Image.asset(path),
                  ),
                ),
                
                SizedBox(height: 10,),
                Text(subtitle,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                // Text('Send',
                // style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
      ],
    );
  }
}