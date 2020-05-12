import 'package:flutter/material.dart';

import '../models/product.dart';
import '../data/dummy_data.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;


  List<Product> get itens => [..._items]; //cria uma cópia, para q não altere diretamente pelo get
  List<Product> get favoriteItens {
    return _items.where((prod) => prod.isFavorite).toList();
  }


  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

// bool _showFavoriteOnly = false;
  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }