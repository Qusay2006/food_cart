import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
part 'notrifier_providerr.g.dart';
@riverpod
 class NotrifierProviderr extends _$NotrifierProviderr {
  @override
  Set<Product> build() {
    return const {};
  }

  void insertitem(Product product) {
    state = {...state, product};
  }
  void removeitem(Product product) {
    state = state.where((e) => e.id != product.id).toSet();
  }
}

@riverpod
int cartTotal(CartTotalRef ref){
 final result = ref.watch(notrifierProviderrProvider);
 int sum = 0;
 for(var i in result){
   sum+=i.price;
 }
 return sum;
}
