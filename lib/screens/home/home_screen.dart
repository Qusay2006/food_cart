import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/notrifier_providerr.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_files/models/product_providers.dart';
import 'package:riverpod_files/shared/cart_icon.dart';
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
final allproduct1 = ref.watch(productsProvider);
final isthere = ref.watch(notrifierProviderrProvider);

    return Scaffold(backgroundColor: Colors. white70,appBar: AppBar(title: Text('Food Groceries'),backgroundColor: Colors.deepOrange,
    actions: const [CartIcon()
        ],
    ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7),
            itemCount: allproduct1.length,
          itemBuilder: (context, index) {
             return
                 Card(elevation:20,
                     child: Column(
                       children: [
                           ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(9)),
                             child: Image.network(
                             allproduct1[index].image,width: double.infinity,height: 150,fit: BoxFit.cover,),
                           ),
                         Text(allproduct1[index].title),
                         if(isthere.contains(allproduct1[index]))
            TextButton(onPressed: () {
              ref.read(notrifierProviderrProvider.notifier).removeitem(allproduct1[index]);
            }, child: const Text("Remove")),

                         if(!isthere.contains(allproduct1[index]))
                           TextButton(onPressed: () {
                             ref.read(notrifierProviderrProvider.notifier).insertitem(allproduct1[index]);
                           }, child: const Text("AddCart"))

             ]
                     ),
                 );
          },),
        )
    );
  }
}