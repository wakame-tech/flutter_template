// app flavors
enum Flavor {
  development,
  staging,
  production,
}

extension FlavorExtension on Flavor {
  String toShortString() {
    return toString().split('.').last;
  }
}
