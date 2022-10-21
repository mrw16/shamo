import 'package:flutter/cupertino.dart';
import 'package:shamo/models/category_model.dart';
import 'package:shamo/models/product_model.dart';
import 'package:shamo/services/category_service.dart';
import 'package:shamo/services/product_service.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  set categories(List<CategoryModel> categories) {
    _categories = categories;
    notifyListeners();
  }

  Future<void> getCategories() async {
    try {
      List<CategoryModel> categories = await CategoryService().getCategories();
      _categories = categories;
    } catch (e) {
      print(e);
    }
  }
}
