import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';



class  ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   ShoeTile({super.key, required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
        color:Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
    child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      //shoe pic
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(shoe.imagePath)),
      //desc
      Text(shoe.description,style:TextStyle(color: Colors.grey[600])),
      //price+details
      Padding(
        padding: const EdgeInsets.only(left:25.0),
        
        child: Row(mainAxisAlignment:
         MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //shoename
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(shoe.name,style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text('\₺ '+shoe.price,style: TextStyle(color:Colors.grey[500],),)
          ],),
          
          //plus btn
          GestureDetector(
            onTap:onTap,
            child: Container(
            padding:const EdgeInsets.all(20),
            decoration:const  BoxDecoration(color:Colors.black,
            borderRadius:BorderRadius.only(topLeft: Radius.circular(12),
            bottomRight:Radius.circular(12) 
              ,) 
            ,),
            child: const Icon(Icons.add,color: Colors.white,)),
          ),
        
        ],),
      ),
      //button to add to cart
    ],)
    );
  }
}