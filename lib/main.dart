class Product {
String name;
double basePrice;
int stockQuantity;
double discount;

Product(
this.name,
this.basePrice,
this.stockQuantity,
this.discount,
);

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

void main() {
Product product = Product(
"Laptop",
1000.00,
5,
0.10,
);

print("Product: ${product.name}");
print("Discounted Price: $${product.discountedPrice}");
print("Low Stock: ${product.isLowStock}");
}
