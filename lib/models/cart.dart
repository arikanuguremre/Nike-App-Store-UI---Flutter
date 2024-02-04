

import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

//List of shoes for sale 
List<Shoe> shoeShop = [
  
  Shoe(name:"Air Deldon",
      price: "2.549,90", 
      imagePath: "lib/images/sh1.png",
      description: "Be True!"),
  Shoe(
        name: "Air Max 270",
        price: "5.799,90",
        imagePath: "lib/images/sh2.png",
        description: "Your casual air"),
  Shoe(
        name: "Air Max Plus",
        price: "6.799,90",
        imagePath: "lib/images/sh3.png",
        description: "Just Cool"),
  Shoe(
        name: "LeBron XXI",
        price: "7.199,90",
        imagePath: "lib/images/sh4.png",
        description: "Long live the king!"),
  Shoe(
        name: "Zoom Fly 5",
        price: "5,399.90",
        imagePath: "lib/images/sh5.png",
        description: "Safe and Comfort"),
  Shoe(
        name: "Lebron Nxxt Gen",
        price: "4.299,90",
        imagePath: "lib/images/sh7.png",
        description: "Design For Kings"),

];

// list of items in user cart
List<Shoe> userCart = [];


//get list of shoes for sale
List<Shoe> getShoeList(){
  return shoeShop;
}

//get cart

List<Shoe> getUserCart(){
  return userCart;
}

//add item to cart
void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}

// remove item from cart
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}


}