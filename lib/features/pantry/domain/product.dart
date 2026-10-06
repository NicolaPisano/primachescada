import 'package:isar/isar.dart';

import 'enums.dart';

part 'product.g.dart';

/// Anagrafica di un prodotto (una riga per codice a barre).
@collection
class Product {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String barcode;

  late String name;

  String? brand;

  @Enumerated(EnumType.name)
  Category category = Category.altro;

  /// Giorni di consumo consigliati dopo l'apertura (null = non applicabile).
  int? daysToConsumeAfterOpening;
}
