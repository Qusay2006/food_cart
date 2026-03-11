  import 'dart:convert';

  import 'package:flutter/material.dart';
  import 'package:flutter_riverpod/flutter_riverpod.dart';
  import 'package:riverpod_files/models/product_providers.dart';

  import '../../models/notrifier_providerr.dart';

  class CartScreen extends ConsumerStatefulWidget {
    const CartScreen({super.key});

    @override
    ConsumerState<CartScreen> createState() => _CartScreenState();
  }

  class _CartScreenState extends ConsumerState<CartScreen> {
    bool showCoupon = true;

    @override
    Widget build(BuildContext context) {

      final reduceproduct=ref.watch(notrifierProviderrProvider);
  final total = ref.watch(cartTotalProvider);

      return Scaffold(
        appBar: AppBar(
          title: const Text('Your Cart'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text("Total : \$${total.toString()}"),
                    Column( children: reduceproduct.map((e) {
                      return  Column(
                        children: [
                          Card(
                            child: Row(children: [
                              ClipRRect(borderRadius:BorderRadiusGeometry.circular(23), child: Image.network(e.image,width: 100,)),
                             const SizedBox(width: 20,),
                              Text(e.title),
                              const SizedBox(width: 13,),
                              Text('\$${e.price}'),
                            ],),
                          ),
                      ],
                      );
                    },).toList(),
                    ),
                  ],
                ),
                ),
        ));
    }
  }