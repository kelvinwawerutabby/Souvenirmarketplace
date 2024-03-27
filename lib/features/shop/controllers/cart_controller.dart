import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
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
      cart[existItem]['pieces'] += 1;
    } else {
      cart.add(item);
    }
    update();
  }

  void removeItem(itemIndex) {
    cart.removeAt(itemIndex);
    update();
  }

  void removeAllItem() {
    cart.clear();
    update();
  }

  void placeOrder() {
    String jsonItem = jsonEncode(cart);
    db.collection("orders");
  }
}
