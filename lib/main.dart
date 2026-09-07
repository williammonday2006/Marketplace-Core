class Product {
String name;
double basePrice;
int stockQuantity;
double discount;

// Regular constructor
Product({
required this.name,
required this.basePrice,
this.stockQuantity = 0,
this.discount = 0.0,
});

// Named constructor for a 10% sale
Product.onSale({
required this.name,
required this.basePrice,
this.stockQuantity = 0,
}) : discount = 0.10;

// Named constructor for bulk products
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

void main() {
// Regular constructor
Product regularProduct = Product(
name: "Laptop",
basePrice: 1000.00,
stockQuantity: 20,
);

// onSale named constructor
Product saleProduct = Product.onSale(
name: "Headphones",
basePrice: 100.00,
stockQuantity: 5,
);

// bulk named constructor
Product bulkProduct = Product.bulk(
name: "Mouse",
basePrice: 25.00,
packageSize: 50,
);

print("=== Regular Product ===");
print("Name: ${regularProduct.name}");
print("Price: $${regularProduct.discountedPrice}");
print("Low Stock: ${regularProduct.isLowStock}");

print("\n=== Sale Product ===");
print("Name: ${saleProduct.name}");
print("Base Price: $${saleProduct.basePrice}");
print("Discounted Price: $${saleProduct.discountedPrice}");
print("Low Stock: ${saleProduct.isLowStock}");

print("\n=== Bulk Product ===");
print("Name: ${bulkProduct.name}");
print("Price: $${bulkProduct.discountedPrice}");
print("Stock: ${bulkProduct.stockQuantity}");
print("Low Stock: ${bulkProduct.isLowStock}");
}
