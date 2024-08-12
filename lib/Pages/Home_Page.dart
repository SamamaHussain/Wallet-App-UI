import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/Utililties/Long_Cards.dart';
import 'package:walletapp/Utililties/My_Buttons.dart';
import 'package:walletapp/Utililties/My_Cards.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),

      floatingActionButton: FloatingActionButton(onPressed: () {}, child:  Icon(Icons.ad_units,color: Color.fromARGB(255, 117, 31, 255),size: 35,),backgroundColor: Colors.grey.shade200,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.g_translate,color: Colors.red,size: 35,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.g_translate,color: Colors.red,size: 35,)),
          ],),
        ),
        
        
      ),

    body: SafeArea(
      child: Column(
        children: [
        //app Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                const Text('My',
                style: TextStyle(fontSize: 28,
                fontWeight: FontWeight.bold),),

                const Text('Cards',
                style: TextStyle(fontSize: 28,),),
              ],
            ),
    
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 206, 206, 206),borderRadius: BorderRadius.circular(8.0)), 
            child: Icon(Icons.add,), ),
          ],),
        ),

        const SizedBox(height: 25.0,),
      
        //cards

        Container(
          
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: [
            MyCard(balance: 500.02,cardNumber: 45518,expiryMonth: 05,expiryYear: 24,color: Colors.amber,),
            MyCard(balance: 400.02,cardNumber: 65482,expiryMonth: 04,expiryYear: 28,color: Colors.green,),
            MyCard(balance: 240.02,cardNumber: 25357,expiryMonth: 08,expiryYear: 25,color: Colors.blue,),
          ],
        )
        ),

        SizedBox(height: 20.0,),

        SmoothPageIndicator(controller: _controller, count: 3,
        effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700,
        dotWidth:  15.0,    
        dotHeight: 12.0,
        spacing:  5.0,    
      radius:  100.0,   ),
        ),

        SizedBox(height: 45,),
      
        //3Buttons->sned+pay+bill
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButtons(color: Colors.amber,path: 'lib/icons/send.png',subtitle: 'Send'),
              MyButtons(color: Colors.blue,path: 'lib/icons/credit-card.png',subtitle: 'Transactions'),
              MyButtons(color: Colors.green,path: 'lib/icons/bill.png',subtitle: 'Bills'),
            ],
          ),
        ),
        
      SizedBox(height: 45,),
        //column--> Stats Transc

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            longCards(path: 'lib/icons/growth.png', subtitle: 'Payments and Income', title: 'Statistics'),
            longCards(path: 'lib/icons/transaction.png', subtitle: 'Transactions History', title: 'Transactions'),
          ],),
        )

      ],
      ),
    ),
    
    );
    
  }
}