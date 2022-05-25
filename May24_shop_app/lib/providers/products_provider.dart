import 'package:flutter/material.dart';
import 'package:shop_app/providers/product.dart';

class ProductsProvider extends ChangeNotifier {
  List<Product> _items = [
    Product(
        id: '1',
        title: "Motorola Edge 20 Lite",
        description:
            '6.7" FHD+ Ultra-wide Max Vision display, 1080 x 2400 pixels, 90Hz refresh rate, Android 11',
        price: 399.99,
        imageURL: 'images/Motorola(1).jpg'),
    Product(
      id: '2',
      title: 'Rugged Smartphone, OUKITEL 5G',
      description:
          "【5G global frequency band + Dimensity 800】OUKITEL WP10 is a rugged mobile phone equipped with the world’s latest 5G technology, 5G global frequency band, you can use it freely no matter where you are in the world, and coupled with Dimensity 800 octa-core processor, to bring you a smoother experience",
      price: 499.99,
      imageURL: 'images/OUKITEL(1).jpg',
    ),
    Product(
      id: '3',
      title: 'OnePlus Nord N100 Midnight Frost',
      description:
          'Long-Lasting Power – Defeat battery anxiety with Nord N100’s massive 5000mAh battery, which keeps you powered all day long',
      price: 178.99,
      imageURL: 'images/OnePlus(1).jpg',
    ),
    Product(
      id: '4',
      title: 'Samsung Galaxy S21+ Plus 5G',
      description:
          'PRO-GRADE CAMERA: Zoom in close with 30X Space Zoom, and take photos and videos like a pro with our easy-to-use, multi-lens camera.',
      price: 1049.99,
      imageURL: 'images/Samsung(1).jpg',
    ),
    Product(
      id: '5',
      title: 'Samsung Galaxy S21 Ultra 5G',
      description:
          'DISPLAY: 120Hz Dynamic AMOLED, 6.8" Edge Quad HD+, Corning Gorilla Glass Victus',
      price: 1170.00,
      imageURL: 'images/Samsung(2).jpg',
    ),
    Product(
      id: '6',
      title: 'Nokia G10',
      description:
          'Make the most of family-sized battery power with up to 3 days of life between charges.',
      price: 139.99,
      imageURL: 'images/Nokia(1).jpg',
    ),
    Product(
      id: '7',
      title: 'TCL 20 Pro 5G',
      description:
          'The Power of 5G: Experience revolutionary speeds, faster streaming, quicker downloads, as well as enhanced AI features and hyper-accurate GPS with the Qualcomm Snapdragon 750G 5G Mobile processor. And 6GB of RAM provide effortlessly smooth performance. More sharing, more gaming, more experiences, never miss a beat.',
      price: 529.99,
      imageURL: 'images/TCL(1).jpg',
    ),
    Product(
      id: '8',
      title: 'Moto G Stylus',
      description:
          'Built-in stylus. Retouch photos, jot notes, sketch artwork, and control a growing number of games and all apps with pinpoint precision.',
      price: 299.99,
      imageURL: 'images/Motorola(2).jpg',
    ),
    Product(
      id: '9',
      title: 'Newest HP 14" HD Laptop Light-Weight',
      description:
          '【14" HD Display】14" HD(1366 x 768) Display with micro-edge bezel design, WLED-backlit, BrightView, Enjoy your entertainment with the great quality and high-definition detail of 1 million pixels',
      price: 549.00,
      imageURL: 'images/HP(1).jpg',
    ),
    Product(
      id: '10',
      title: 'Newest LENOVO IdeaPad 3 17.3" HD',
      description:
          'Intel 10th Gen i5-1035G1, Quad-Core, 1.0 GHz Processor (up to 3.6 GHz, 6MB Cache, 8-Threads)',
      price: 799.00,
      imageURL: 'images/LENOVO(1).jpg',
    ),
  ];

  var showFavoritesOnly = false;
  List<Product> get items {
    if (showFavoritesOnly) {
      return  _items.where((element) => element.isFavorite).toList();
    }
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }
}
