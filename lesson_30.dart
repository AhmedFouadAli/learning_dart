typedef funType = String;
typedef greet = String Function(String);
void main() {
  funType name = "coding with fun";
  print(name);

  final welcomeCustomer = (String name) => "welcome customer $name";

  final calculateDiscount = (double totalAmount) {
    if (totalAmount > 100) {
      return totalAmount * 0.1; // 10% discount
    } else {
      return 0.0;
    }
  };
  final calculateDiscount2 = (double totalAmount) {
    if (totalAmount > 150) {
      return totalAmount * 0.5; // 50% discount
    } else {
      return 0.0;
    }
  };

  applyAndPrintDiscount(calculateDiscount2, 160);
  applyAndPrintDiscount(calculateDiscount, 160);

  // /example2

  // Creating functions for data transformation
  final capitalize = (String text) => text.toUpperCase();
  final addExclamation = (String text) => '$text!';

  transformAndPrint((String text) => text.substring(2), "ahmed Fouad ali");
  transformAndPrint(addExclamation, "ahmed Fouad ali");
}

void applyAndPrintDiscount(
    double Function(double) discountFunction, double totalAmount) {
  double discount = discountFunction(totalAmount); // discount amount
  double bill = totalAmount - discount;
  print("Original Amount: \$$totalAmount");
  print("Discount: \$$discount");
  print("Bill Amount: \$$bill");
}

void transformAndPrint(
    String Function(String) transformFunction, String originalText) {
  String applyTransform = transformFunction(originalText);

  print("Original Text: $originalText");
  print("Transformed Text: $applyTransform");
}
