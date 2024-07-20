import 'package:flutter/material.dart';
import 'package:mypcot/constants/constants.dart';
import 'package:simple_star_rating/simple_star_rating.dart';

class product_container extends StatelessWidget {
  const product_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 153,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image
          SizedBox(width: 80,
          height: 80,
            child: Image.asset('assets/cooker.png')),
            progap,

          //button
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 25,
              width: 70,
              margin:const  EdgeInsets.only(left: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orange[300]
              ),
              child: const Center(child: Text('Sale 65% Off',style: TextStyle(fontSize: 7.5),)),
              ),
            ],
          ),
          progap,

           //description
           Container(margin: const EdgeInsets.only(left: 5),
             child: const Text('The is a long established fact that a reader ',
             style:TextStyle(fontSize: 10),),
           ),
           progap,

           //star rating
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(margin: EdgeInsets.only(left: 5),
                 child: SimpleStarRating(
                           allowHalfRating: true,
                           starCount: 5,
                           rating: 4,
                           size: 10,
                           onRated: (rate) {},
                           spacing: 2,
                 ),
               ),
             ],
           ),
           progap,

           //price
          Container(margin: EdgeInsets.only(left: 5),
            child: const Row(
              children: [
                Text(' ₹100',style: TextStyle(fontSize: 10),),SizedBox(width: 2,),
                Text('₹100',style: TextStyle(fontSize: 10,decoration: TextDecoration.lineThrough),)
              ],
            ),
          ),
          progap,


        ],
        
      ),
    );
  }
}