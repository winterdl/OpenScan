// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Folder extends DataClass implements Insertable<Folder> {
  final String folderName;
  final String folderPath;
  final String created;
  final String lastModified;
  final String imagePath;
  final int imageIndex;
  Folder(
      {@required this.folderName,
      @required this.folderPath,
      @required this.created,
      @required this.lastModified,
      @required this.imagePath,
      this.imageIndex});
  factory Folder.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return Folder(
      folderName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}folder_name']),
      folderPath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}folder_path']),
      created:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}created']),
      lastModified: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_modified']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      imageIndex: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_index']),
    );
  }
  factory Folder.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Folder(
      folderName: serializer.fromJson<String>(json['folderName']),
      folderPath: serializer.fromJson<String>(json['folderPath']),
      created: serializer.fromJson<String>(json['created']),
      lastModified: serializer.fromJson<String>(json['lastModified']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      imageIndex: serializer.fromJson<int>(json['imageIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'folderName': serializer.toJson<String>(folderName),
      'folderPath': serializer.toJson<String>(folderPath),
      'created': serializer.toJson<String>(created),
      'lastModified': serializer.toJson<String>(lastModified),
      'imagePath': serializer.toJson<String>(imagePath),
      'imageIndex': serializer.toJson<int>(imageIndex),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Folder>>(bool nullToAbsent) {
    return FoldersCompanion(
      folderName: folderName == null && nullToAbsent
          ? const Value.absent()
          : Value(folderName),
      folderPath: folderPath == null && nullToAbsent
          ? const Value.absent()
          : Value(folderPath),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      lastModified: lastModified == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModified),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      imageIndex: imageIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(imageIndex),
    ) as T;
  }

  Folder copyWith(
          {String folderName,
          String folderPath,
          String created,
          String lastModified,
          String imagePath,
          int imageIndex}) =>
      Folder(
        folderName: folderName ?? this.folderName,
        folderPath: folderPath ?? this.folderPath,
        created: created ?? this.created,
        lastModified: lastModified ?? this.lastModified,
        imagePath: imagePath ?? this.imagePath,
        imageIndex: imageIndex ?? this.imageIndex,
      );
  @override
  String toString() {
    return (StringBuffer('Folder(')
          ..write('folderName: $folderName, ')
          ..write('folderPath: $folderPath, ')
          ..write('created: $created, ')
          ..write('lastModified: $lastModified, ')
          ..write('imagePath: $imagePath, ')
          ..write('imageIndex: $imageIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      folderName.hashCode,
      $mrjc(
          folderPath.hashCode,
          $mrjc(
              created.hashCode,
              $mrjc(lastModified.hashCode,
                  $mrjc(imagePath.hashCode, imageIndex.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Folder &&
          other.folderName == folderName &&
          other.folderPath == folderPath &&
          other.created == created &&
          other.lastModified == lastModified &&
          other.imagePath == imagePath &&
          other.imageIndex == imageIndex);
}

class FoldersCompanion extends UpdateCompanion<Folder> {
  final Value<String> folderName;
  final Value<String> folderPath;
  final Value<String> created;
  final Value<String> lastModified;
  final Value<String> imagePath;
  final Value<int> imageIndex;
  const FoldersCompanion({
    this.folderName = const Value.absent(),
    this.folderPath = const Value.absent(),
    this.created = const Value.absent(),
    this.lastModified = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.imageIndex = const Value.absent(),
  });
  FoldersCompanion copyWith(
      {Value<String> folderName,
      Value<String> folderPath,
      Value<String> created,
      Value<String> lastModified,
      Value<String> imagePath,
      Value<int> imageIndex}) {
    return FoldersCompanion(
      folderName: folderName ?? this.folderName,
      folderPath: folderPath ?? this.folderPath,
      created: created ?? this.created,
      lastModified: lastModified ?? this.lastModified,
      imagePath: imagePath ?? this.imagePath,
      imageIndex: imageIndex ?? this.imageIndex,
    );
  }
}

class $FoldersTable extends Folders with TableInfo<$FoldersTable, Folder> {
  final GeneratedDatabase _db;
  final String _alias;
  $FoldersTable(this._db, [this._alias]);
  final VerificationMeta _folderNameMeta = const VerificationMeta('folderName');
  GeneratedTextColumn _folderName;
  @override
  GeneratedTextColumn get folderName => _folderName ??= _constructFolderName();
  GeneratedTextColumn _constructFolderName() {
    return GeneratedTextColumn('folder_name', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _folderPathMeta = const VerificationMeta('folderPath');
  GeneratedTextColumn _folderPath;
  @override
  GeneratedTextColumn get folderPath => _folderPath ??= _constructFolderPath();
  GeneratedTextColumn _constructFolderPath() {
    return GeneratedTextColumn('folder_path', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _createdMeta = const VerificationMeta('created');
  GeneratedTextColumn _created;
  @override
  GeneratedTextColumn get created => _created ??= _constructCreated();
  GeneratedTextColumn _constructCreated() {
    return GeneratedTextColumn('created', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _lastModifiedMeta =
      const VerificationMeta('lastModified');
  GeneratedTextColumn _lastModified;
  @override
  GeneratedTextColumn get lastModified =>
      _lastModified ??= _constructLastModified();
  GeneratedTextColumn _constructLastModified() {
    return GeneratedTextColumn('last_modified', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn('image_path', $tableName, false,
        minTextLength: 1, maxTextLength: 200);
  }

  final VerificationMeta _imageIndexMeta = const VerificationMeta('imageIndex');
  GeneratedIntColumn _imageIndex;
  @override
  GeneratedIntColumn get imageIndex => _imageIndex ??= _constructImageIndex();
  GeneratedIntColumn _constructImageIndex() {
    return GeneratedIntColumn(
      'image_index',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [folderName, folderPath, created, lastModified, imagePath, imageIndex];
  @override
  $FoldersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'folders';
  @override
  final String actualTableName = 'folders';
  @override
  VerificationContext validateIntegrity(FoldersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.folderName.present) {
      context.handle(_folderNameMeta,
          folderName.isAcceptableValue(d.folderName.value, _folderNameMeta));
    } else if (folderName.isRequired && isInserting) {
      context.missing(_folderNameMeta);
    }
    if (d.folderPath.present) {
      context.handle(_folderPathMeta,
          folderPath.isAcceptableValue(d.folderPath.value, _folderPathMeta));
    } else if (folderPath.isRequired && isInserting) {
      context.missing(_folderPathMeta);
    }
    if (d.created.present) {
      context.handle(_createdMeta,
          created.isAcceptableValue(d.created.value, _createdMeta));
    } else if (created.isRequired && isInserting) {
      context.missing(_createdMeta);
    }
    if (d.lastModified.present) {
      context.handle(
          _lastModifiedMeta,
          lastModified.isAcceptableValue(
              d.lastModified.value, _lastModifiedMeta));
    } else if (lastModified.isRequired && isInserting) {
      context.missing(_lastModifiedMeta);
    }
    if (d.imagePath.present) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableValue(d.imagePath.value, _imagePathMeta));
    } else if (imagePath.isRequired && isInserting) {
      context.missing(_imagePathMeta);
    }
    if (d.imageIndex.present) {
      context.handle(_imageIndexMeta,
          imageIndex.isAcceptableValue(d.imageIndex.value, _imageIndexMeta));
    } else if (imageIndex.isRequired && isInserting) {
      context.missing(_imageIndexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {folderPath};
  @override
  Folder map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Folder.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(FoldersCompanion d) {
    final map = <String, Variable>{};
    if (d.folderName.present) {
      map['folder_name'] = Variable<String, StringType>(d.folderName.value);
    }
    if (d.folderPath.present) {
      map['folder_path'] = Variable<String, StringType>(d.folderPath.value);
    }
    if (d.created.present) {
      map['created'] = Variable<String, StringType>(d.created.value);
    }
    if (d.lastModified.present) {
      map['last_modified'] = Variable<String, StringType>(d.lastModified.value);
    }
    if (d.imagePath.present) {
      map['image_path'] = Variable<String, StringType>(d.imagePath.value);
    }
    if (d.imageIndex.present) {
      map['image_index'] = Variable<int, IntType>(d.imageIndex.value);
    }
    return map;
  }

  @override
  $FoldersTable createAlias(String alias) {
    return $FoldersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $FoldersTable _folders;
  $FoldersTable get folders => _folders ??= $FoldersTable(this);
  @override
  List<TableInfo> get allTables => [folders];
}
