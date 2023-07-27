// Exercise: Temperature conversion
// double tempFahrenheit = 90;
// convert  the temperature to Celsius, using this formula:
// Fahrenheit to Celsius:   (°F − 32) / 1.8 = °C
// Then, print the result. The output of this program should be:
// the converted temperature in celsius should show at most 1 fractional digit
//90.0F = 32.2C

void main() {
  double tempFahrenheit = 90;
  double fahrenheitToCelsius = (tempFahrenheit - 32) / 1.8;
  print("${tempFahrenheit.toStringAsFixed(1)}F = ${fahrenheitToCelsius.toStringAsFixed(1)}C");
}
