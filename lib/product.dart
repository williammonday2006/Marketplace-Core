class Product {
String name;
double basePrice;
int stockQuantity;
double discount;

Product({
required this.name,
required this.basePrice,
this.stockQuantity = 0,
this.discount = 0.0,
});

Product.onSale({
required this.name,
required this.basePrice,
this.stockQuantity = 0,
}) : discount = 0.10;

Product.bulk({
required this.name,
required this.basePrice,
required int packageSize,
this.discount = 0.0,
}) : stockQuantity = packageSize;

double get discountedPrice {
if (discount > 0) {
return basePrice * (1 - discount);
}

```
return basePrice;
```

}

bool get isLowStock {
return stockQuantity < 10;
}
}
