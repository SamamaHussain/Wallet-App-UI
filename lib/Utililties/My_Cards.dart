import 'package:flutter/material.dart';



class MyCard extends StatelessWidget {
    final double balance;
  final double cardNumber;
  final double expiryMonth;
  final double expiryYear;
  final color;
  const MyCard({super.key,
  required this.balance,
  required this.cardNumber,
  required this.expiryMonth,
  required this.expiryYear,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
            
            width: 300.0,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(color:color, borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
              Text('Balance',
              style: TextStyle(color: Colors.white),),
      
              SizedBox(height: 5.0,),
      
              Text('\$'+ balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 28.0),),
      
              SizedBox(height: 20.0,),
      
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('****'+cardNumber.toString(),
              style: TextStyle(color: Colors.white),),
                Text(expiryMonth.toString()+'/'+expiryYear.toString(),
              style: TextStyle(color: Colors.white),),
              ],)
            ],),
          ),
    );
  }
}