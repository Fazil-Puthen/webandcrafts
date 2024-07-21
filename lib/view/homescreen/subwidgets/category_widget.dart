import 'package:flutter/material.dart';
import 'package:mypcot/constants/constants.dart';
import 'package:mypcot/model/model2/category_model2.dart';

class CategoryWidget extends StatelessWidget {
  final List<Category> value;
  const CategoryWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,

    itemBuilder:(context, index) => 
    // final data=value[index];
    Container(height: 100,width: 120,
    
    decoration: BoxDecoration(
      border: Border.all(width: 1,color: Colors.grey),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        
        //image box
        SizedBox(
          width:65 ,
          height: 65,
          child: Image.network(value[index].imageUrl),
        ),
        progap,

        //text
        Text(value[index].title,style: const TextStyle(fontSize: 13),),
      ],
    ),
    ),
    
    separatorBuilder:(context, index) => const SizedBox(width: 10,),

    itemCount: value.length);
  }
}