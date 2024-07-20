import 'package:flutter/material.dart';
import 'package:mypcot/constants/constants.dart';

class category_widget extends StatelessWidget {
  const category_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,

    itemBuilder:(context, index) => 
    Container(height: 100,width: 120,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        
        //image box
        SizedBox(
          width:65 ,
          height: 65,
          child: Image.asset('assets/cooker.png'),
        ),
        progap,

        //text
        const Text('Grocery & Foods',style: TextStyle(fontSize: 13),),
      ],
    ),
    ),
    
    separatorBuilder:(context, index) => const SizedBox(width: 10,),

    itemCount: 10);
  }
}