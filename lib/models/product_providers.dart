import 'dart:ffi';

import 'package:riverpod_files/models/product.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_providers.g.dart';

const List<Product> AllProduct = [
   Product(id: '1', title: 'Burger', price: 15, image:   'https://images.pexels.com/photos/30500743/pexels-photo-30500743.jpeg'),
Product(id: '2', title: 'Pizza', price: 20, image:'https://images.pexels.com/photos/708587/pexels-photo-708587.jpeg' ),
Product(id: '3', title: 'Sushi', price: 14, image: 'https://images.pexels.com/photos/6984182/pexels-photo-6984182.jpeg'),
Product(id: '4', title: 'fries', price: 9, image: 'https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg'),
Product(id: '5', title: 'Shawarma', price: 17, image: 'https://images.pexels.com/photos/5779364/pexels-photo-5779364.jpeg'),
Product(id: '6', title: 'Salmon', price: 39, image: 'https://images.pexels.com/photos/3490368/pexels-photo-3490368.jpeg'),
Product(id: '7', title: 'hot dog', price: 13, image: 'https://images.pexels.com/photos/29476590/pexels-photo-29476590.jpeg'),
Product(id: '8', title: 'Salad', price: 8, image: 'https://images.pexels.com/photos/1213710/pexels-photo-1213710.jpeg'),
Product(id: '9', title: 'fried chicken', price: 30, image: 'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg'),
];

@riverpod
List<Product> products (ref){
  return AllProduct;
}
