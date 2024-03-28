import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eccomerceapp/features/authentication/controllers/firebase_auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../navigation_menu.dart';
import '../../../utils/constants/image_strings.dart';
import '../../authentication/screens/success_screen/success_screen.dart';

class CartController extends GetxController {
  FirebaseFirestore db = FirebaseFirestore.instance;
  List cart = [];
  double totalPrice = 0.0;

  double get cartTotalPrice => totalPrice;
  List get cartItems => cart;

  // @override
  // void onInit() {
  //   super.onInit();
  //   cart = [];
  // }

  void addItem(item) {
    final existItem = cart.indexWhere((element) => element["id"] == item['id']);
    if (existItem != -1) {
      cart[existItem]['quantity'] += 1;
    } else {
      cart.add(item);
      Get.snackbar("My Cart", "Successfully Added To Cart",
        snackPosition: SnackPosition.TOP, backgroundColor: Colors.green);
    }

    update();
  }

  void removeItem(itemIndex) {
    final existItem = cart.indexWhere((element) => element["id"] == itemIndex);
    cart.removeAt(existItem);
    Get.snackbar("My Cart", "Successfully Removed Item From Cart",
        snackPosition: SnackPosition.TOP, backgroundColor: Colors.green);
    update();
  }

  void removeAllItem() {
    cart.clear();
    Get.snackbar("My Cart", "Successfully Cleared The Cart",
        snackPosition: SnackPosition.TOP, backgroundColor: Colors.green);
    update();
  }

  void placeOrder() {
    User? user = Get.find<AuthController>().auth_user;
    if (user != null) {
      if (cart.isEmpty) {
        Get.snackbar("Error Checking Out", "Empty Cart",
            snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
      } else {
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
          cart.clear();
          update();
          Get.to(
            () => SuccessScreen(
              image: SImages.onBoardingImage1,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          );
        });
      }
    } else {
      Get.snackbar("Error Checking Out", "User Not Authenticated, Login Again",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    }
  }
}
