import 'product.dart';

class Bundle {
List<Product> products;

Bundle({
required this.products,
});

double get totalPrice {
double total = 0.0;

```
for (Product product in products) {
  total += product.discountedPrice;
}

return total;
```

}
}
