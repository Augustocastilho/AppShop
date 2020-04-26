import 'package:flutter/material.dart';

import '../models/product.dart';
import '../data/dummy_data.dart';

class Products with ChangeNotifier{

  List<Product> _items = DUMMY_PRODUCTS;

  List<Product> get itens => [ ..._items ]; //cria uma cópia, para q não altere diretamente pelo get

  void addProduct(Product product){
    _items.add(product);
    notifyListeners();
  }
}