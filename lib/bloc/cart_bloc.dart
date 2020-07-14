import 'package:flutter/cupertino.dart';
import 'package:testing/model/product_model.dart';

class CartBlock extends ChangeNotifier {
  double _total = 0;
  List<Product> _products = [];

  void add(Product product) {
    _products.add(product);
    _total = _total + product.sellingPrice;
    notifyListeners();
  }

  void remove(Product product) {
    _products.remove(product);
    _total = _total - product.sellingPrice;
    notifyListeners();
  }

  int get totalItems {
    return _products.length;
  }

  double get total {
    return _total;
  }

  List<Product> get products {
    return _products;
  }
}
