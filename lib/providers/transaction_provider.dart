import 'package:flutter/material.dart';
import 'package:shamo/models/cart_model.dart';
import 'package:shamo/models/user_model.dart';
import 'package:shamo/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  var result = true;
  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice, String va) async {
    try {
      if (await TransactionService().checkout(token, carts, totalPrice, va)) {
        result = true;
      }
    } catch (e) {
      print(e);
      result = false;
    }
    return result;
  }
}
