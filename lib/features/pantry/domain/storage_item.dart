import 'package:isar/isar.dart';

import 'enums.dart';
import 'product.dart';

part 'storage_item.g.dart';

/// Scorta fisica di un prodotto, collegata alla sua anagrafica.
@collection
class StorageItem {
  Id id = Isar.autoIncrement;

  final product = IsarLink<Product>();

  /// Data di scadenza stampata sulla confezione.
  @Index()
  late DateTime expirationDate;

  /// Data di apertura (null = confezione sigillata).
  DateTime? openedDate;

  @Enumerated(EnumType.name)
  StorageLocation location = StorageLocation.dispensa;

  @Enumerated(EnumType.name)
  ItemStatus status = ItemStatus.disponibile;
}
