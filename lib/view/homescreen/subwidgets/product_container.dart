import 'package:flutter/material.dart';
import 'package:web_crafts/constants/constants.dart';
import 'package:web_crafts/model/model2/product_model2.dart';
import 'package:simple_star_rating/simple_star_rating.dart';

class ProductContainer extends StatelessWidget {
  final List<Product> value;
  final int index;
  const ProductContainer({
    super.key,
    required this.value,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final data=value[index];
    return Container(
      width: 150,
      height: 153,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image
          SizedBox(width: 90,
          height: 90,
            child: Image.network(data.productImage)),
            progap,

          //button
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 25,
              width: 75,
              margin:const  EdgeInsets.only(left: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orange[300]
              ),
              child:  Center(child:
              Text('Sale ${data.discount}',
              style:const  TextStyle(fontSize: 8),)),
              ),
            ],
          ),
          progap,

           //description
           Container(margin: const EdgeInsets.only(left: 5),
             child: Text(data.productName,
             style:const TextStyle(fontSize: 11),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,),
           ),
           progap,

           //star rating
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(margin: const EdgeInsets.only(left: 5),
                 child: SimpleStarRating(
                           allowHalfRating: true,
                           starCount: 5,
                           rating: data.productRating.toDouble(),
                           size: 10,
                           onRated: (rate) {},
                           spacing: 2,
                 ),
               ),
             ],
           ),
           progap,

           //price
          Container(margin: const EdgeInsets.only(left: 5),
            child:  Row(
              children: [
                Text(data.actualPrice,style: 
                const TextStyle(fontSize: 10.5),),
                const SizedBox(width: 4,),
                Text(data.offerPrice,style: 
                const TextStyle(fontSize: 10.5,decoration: TextDecoration.lineThrough),)
              ],
            ),
          ),
          progap,


        ],
        
      ),
    );
  }
}