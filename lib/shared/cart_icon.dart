import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/notrifier_providerr.dart';
import 'package:riverpod_files/screens/cart/cart_screen.dart';
class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});
  @override

  Widget build(BuildContext context,WidgetRef ref) {
 late final length = ref.watch(notrifierProviderrProvider).length;
    return
      Stack(
        children: [
        IconButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) {
  return const CartScreen();
},));
        }, icon: const Icon(Icons.sell)),
           Positioned(width: 12,bottom: 11,left:22, child:CircleAvatar(backgroundColor: Colors.blue,
           child: Text(length.toString()),))
        ],
    );
  }
}
