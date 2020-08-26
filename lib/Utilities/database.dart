import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

//flutter packages pub run build_runner watch

class Folders extends Table {
  TextColumn get folderName => text().withLength(min: 1, max: 200)();
  TextColumn get folderPath => text().withLength(min: 1, max: 200)();
  TextColumn get created => text().withLength(min: 1, max: 200)();
  TextColumn get lastModified => text().withLength(min: 1, max: 200)();
  TextColumn get imagePath => text().withLength(min: 1, max: 200)();
  IntColumn get imageIndex => integer().nullable()();

  @override
  Set<Column> get primaryKey => {folderPath};
}

@UseMoor(tables: [Folders])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite', logStatements: true,
  ));

  @override
  int get schemaVersion => 2;

  Future<List<Folder>> getAllFolders() => select(folders).get();

  Future<List<Folder>> getAllImages(String folderName) => (select(folders)..where((tbl) => tbl._folderPath.equals(folderName))).get();

  Stream<List<Folder>> watchAllFolders() => select(folders).watch();

  Future insertImage(Folder folder) => into(folders).insert(folder);

  Future updateImage(Folder folder) => update(folders).replace(folder);

  Future deleteImage(Folder folder) => delete(folders).delete(folder);
}
