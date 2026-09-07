import 'product.dart';
import 'bundle.dart';

void main() {
Product laptop = Product(
name: "Laptop",
basePrice: 1000.00,
stockQuantity: 20,
);

Product headphones = Product.onSale(
name: "Headphones",
basePrice: 100.00,
stockQuantity: 5,
);

Product mouse = Product.bulk(
name: "Mouse",
basePrice: 25.00,
packageSize: 50,
);

Bundle bundle = Bundle(
products: [
laptop,
headphones,
mouse,
],
);

print("=== Products ===");

print("${laptop.name}: $${laptop.discountedPrice}");
print("${headphones.name}: $${headphones.discountedPrice}");
print("${mouse.name}: $${mouse.discountedPrice}");

print("\n=== Bundle ===");
print("Total Price: $${bundle.totalPrice}");
}
