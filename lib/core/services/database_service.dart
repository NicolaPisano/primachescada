import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/pantry/domain/product.dart';
import '../../features/pantry/domain/storage_item.dart';

class DatabaseService {
  DatabaseService._();

  static Isar? _isar;

  static Isar get instance {
    final isar = _isar;
    if (isar == null) {
      throw StateError('DatabaseService.init() non è stato chiamato.');
    }
    return isar;
  }

  /// Apre (o riusa) l'istanza Isar con tutte le collection dell'app.
  static Future<Isar> init() async {
    final existing = _isar ?? Isar.getInstance();
    if (existing != null) return _isar = existing;

    final dir = await getApplicationDocumentsDirectory();
    return _isar = await Isar.open(
      [ProductSchema, StorageItemSchema],
      directory: dir.path,
    );
  }
}
