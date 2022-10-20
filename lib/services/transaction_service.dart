import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shamo/models/cart_model.dart';
import 'package:shamo/models/user_model.dart';

class TransactionService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice, String va) async {
    var url = '$baseUrl/checkout';

    var urlMidtrans = 'https://api.sandbox.midtrans.com/v2/charge';

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };

    var headersMidtrans = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':
          'Basic U0ItTWlkLXNlcnZlci03ZXA3V1lKSVFDWVV2OUJtV1p1VDJlS246',
    };

    var body = jsonEncode(
      {
        'address': 'Bogor',
        'items': carts
            .map(
              (cart) => {
                'id': cart.product.id,
                'quantity': cart.quantity,
              },
            )
            .toList(),
        'status': 'PENDING',
        'total_price': totalPrice,
        'shipping_price': 0,
      },
    );

    var bodyMidtrans = jsonEncode({
      'payment_type': 'bank_transfer',
      'bank_transfer': {'bank': va},
      'transaction_details': {
        'order_id': 'order-102-101' + DateTime.now().toString(),
        'gross_amount': totalPrice
      },
      'customer_details': {
        'email': 'test@Midtrans.com',
        'phone': '+628112341234'
      },
      'item_details': carts
          .map(
            (cart) => {
              'id': cart.product.id,
              'price': cart.product.price,
              'quantity': cart.quantity,
              'name': cart.product.name,
            },
          )
          .toList(),
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    await http.post(
      Uri.parse(urlMidtrans),
      headers: headersMidtrans,
      body: bodyMidtrans,
    );

    print(va);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal melakukan checkout');
    }
  }
}
