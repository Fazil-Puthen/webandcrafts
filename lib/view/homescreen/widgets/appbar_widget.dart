import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.green[300],
    child: Center(
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
      
        //cart image
         SizedBox(
          width: 40,
          height: 40,
          child: Image.asset('assets/empty_cart.png',fit:BoxFit.cover,)),
      
         //search field
         SizedBox(
          width: 232,
          height: 30,
           child: TextFormField(
            
             decoration:const InputDecoration(
              contentPadding: EdgeInsets.all(5),
              filled: true,
             fillColor: Colors.white,
             suffixIcon: Opacity(
              opacity: .3,
              child: Icon(Icons.search,)),
             border:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide.none,
                ),
             ),
           ),
         ),
      
         //notificaion icon
         const Padding(
           padding: EdgeInsets.only(bottom: 15,right:5 ),
           child: SizedBox(width: 10,
           height: 10,
             child: Stack(children: [
             Icon(Icons.notifications_none,color: Colors.white,),
             CircleAvatar(
               backgroundColor: Colors.red,
               child: Center(child: Text('0',style:TextStyle(color: Colors.white,fontSize: 5),),),
             )
             ],),
           ),
         )
       ],
      ),
    ),
    );
  }
}