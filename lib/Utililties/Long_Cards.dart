import 'package:flutter/material.dart';

class longCards extends StatelessWidget {
  // final color;
  final String title;
  final String subtitle;
  final String path;
  const longCards({
    super.key,
    required this.path,required this.subtitle, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                height: 95,
                child: Image.asset(path),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(width: 22,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(subtitle,
                  style: TextStyle(fontSize: 13,color: Colors.grey.shade700),),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
