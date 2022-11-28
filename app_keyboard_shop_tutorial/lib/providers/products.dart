import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'keyboard1',
        title: 'Monet’s Pond',
        description: 'Bàn phím cơ AKKO 3087 v2 Monet’s Pond (Akko switch v2)',
        price: 29.99,
        imageUrl: "https://guardian.ng/wp-content/uploads/2020/07/book.jpeg"),
    Product(
      id: 'keyboard2',
      title: 'Ocean Star',
      description: 'Bàn phím cơ Akko 3084SP Ocean Star',
      price: 39.99,
      imageUrl: 'https://guardian.ng/wp-content/uploads/2020/07/book.jpeg',
    ),
    Product(
        id: 'keyboard3',
        title: 'ACR61',
        description:
            'Bàn phím cơ AKKO ACR61 White (Hotswap / RGB / AKKO CS sw Jelly White)',
        price: 49.99,
        imageUrl: "https://guardian.ng/wp-content/uploads/2020/07/book.jpeg"),
    Product(
      id: 'keyboard4',
      title: 'Horizon',
      description: 'Bàn phím cơ AKKO 3087 v2 DS Horizon - Akko switch v2',
      price: 59.99,
      imageUrl: 'https://guardian.ng/wp-content/uploads/2020/07/book.jpeg',
    ),
    Product(
        id: 'keyboard5',
        title: 'Monet’s Pond',
        description: 'Bàn phím cơ AKKO 3087 v2 Monet’s Pond (Akko switch v2)',
        price: 69.99,
        imageUrl: "https://guardian.ng/wp-content/uploads/2020/07/book.jpeg"),
    Product(
      id: 'keyboard6',
      title: 'Chopper',
      description: 'Bàn phím cơ Akko 3087 v2 One Piece – Chopper (Akko switch)',
      price: 99.99,
      imageUrl: 'https://guardian.ng/wp-content/uploads/2020/07/book.jpeg',
    ),
    Product(
      id: 'keyboard7',
      title: 'World Tour Tokyo',
      description:
          'Bàn phím cơ AKKO 3068B Multi-modes World Tour Tokyo R2 (Bluetooth 5.0 / Wireless 2.4Ghz / Hotswap / Foam tiêu âm / AKKO CS Jelly sw)',
      price: 79.99,
      imageUrl: 'https://guardian.ng/wp-content/uploads/2020/07/book.jpeg',
    ),
    Product(
        id: 'keyboard8',
        title: 'Doraemon',
        description: 'Doraemon 3068v2 BT5.0',
        price: 84.99,
        imageUrl: "https://guardian.ng/wp-content/uploads/2020/07/book.jpeg"),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
