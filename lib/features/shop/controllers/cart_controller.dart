import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eccomerceapp/features/authentication/controllers/firebase_auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  FirebaseFirestore db = FirebaseFirestore.instance;
  late List cart;
  double totalPrice = 0.0;

  double get cartTotalPrice => totalPrice;
  List get cartItems => cart;

  @override
  void onInit() {
    super.onInit();
    cart = [];
  }

  void addItem(item) {
    final existItem = cart.indexWhere((element) => element["id"] == item['id']);
    if (existItem != -1) {
      cart[existItem]['quantity'] += 1;
    } else {
      cart.add(item);
    }
    update();
  }

  void removeItem(itemIndex) {
    final existItem = cart.indexWhere((element) => element["id"] == itemIndex);
    cart.removeAt(existItem);
    update();
  }

  void removeAllItem() {
    cart.clear();
    update();
  }

  void placeOrder() {
    User? user = Get.find<AuthController>().auth_user;
    if(user != null){
      if(cart.isEmpty){
      Get.snackbar("Error Checking Out", "Empty Cart",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
      }else{
        final order = {"userid": user.uid, "created_at": DateTime.now()};
          db.collection("orders").add(order).then((documentSnapshot) {
            cart.map((e) {
              var itemd = {
                "id": e['id'],
                "name": e['name'],
                "created_at": DateTime.now(),
                "quantity": e[''],
                "each_price": e['price']
              };
              db
                  .collection('orders')
                  .doc(documentSnapshot.id)
                  .collection('order_items')
                  .add(itemd);
            });
            removeAllItem();
          });
      }
    }else{
       Get.snackbar("Error Checking Out", "User Not Authenticated, Login Again",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    }
    
  }
}
