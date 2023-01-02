// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'object_box/productModal_objectbox.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 3116740417824880110),
      name: 'ProductModalObjectBox',
      lastPropertyId: const IdUid(10, 203666305246942627),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3876436788210299200),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4453517206173811910),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6698209454598153827),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8430542849451030869),
            name: 'price',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5781405070089550361),
            name: 'ratings',
            type: 8,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 137809431270994217),
            name: 'category',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 5311017552231396848),
            name: 'stock',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 5553424427218931319),
            name: 'NoOfReviews',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 1645190712850490165),
            name: 'createdAt',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 203666305246942627),
            name: 'time',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 3116740417824880110),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    ProductModalObjectBox: EntityDefinition<ProductModalObjectBox>(
        model: _entities[0],
        toOneRelations: (ProductModalObjectBox object) => [],
        toManyRelations: (ProductModalObjectBox object) => {},
        getId: (ProductModalObjectBox object) => object.id,
        setId: (ProductModalObjectBox object, int id) {
          object.id = id;
        },
        objectToFB: (ProductModalObjectBox object, fb.Builder fbb) {
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final descriptionOffset = object.description == null
              ? null
              : fbb.writeString(object.description!);
          final categoryOffset = object.category == null
              ? null
              : fbb.writeString(object.category!);
          final createdAtOffset = object.createdAt == null
              ? null
              : fbb.writeString(object.createdAt!);
          final timeOffset =
              object.time == null ? null : fbb.writeString(object.time!);
          fbb.startTable(11);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, descriptionOffset);
          fbb.addInt64(3, object.price);
          fbb.addFloat64(4, object.ratings);
          fbb.addOffset(5, categoryOffset);
          fbb.addInt64(6, object.stock);
          fbb.addInt64(7, object.NoOfReviews);
          fbb.addOffset(8, createdAtOffset);
          fbb.addOffset(9, timeOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ProductModalObjectBox(
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              price: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              ratings: const fb.Float64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              category: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              stock: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              NoOfReviews: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              createdAt: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 20),
              time: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 22))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..description = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 8);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [ProductModalObjectBox] entity fields to define ObjectBox queries.
class ProductModalObjectBox_ {
  /// see [ProductModalObjectBox.id]
  static final id =
      QueryIntegerProperty<ProductModalObjectBox>(_entities[0].properties[0]);

  /// see [ProductModalObjectBox.name]
  static final name =
      QueryStringProperty<ProductModalObjectBox>(_entities[0].properties[1]);

  /// see [ProductModalObjectBox.description]
  static final description =
      QueryStringProperty<ProductModalObjectBox>(_entities[0].properties[2]);

  /// see [ProductModalObjectBox.price]
  static final price =
      QueryIntegerProperty<ProductModalObjectBox>(_entities[0].properties[3]);

  /// see [ProductModalObjectBox.ratings]
  static final ratings =
      QueryDoubleProperty<ProductModalObjectBox>(_entities[0].properties[4]);

  /// see [ProductModalObjectBox.category]
  static final category =
      QueryStringProperty<ProductModalObjectBox>(_entities[0].properties[5]);

  /// see [ProductModalObjectBox.stock]
  static final stock =
      QueryIntegerProperty<ProductModalObjectBox>(_entities[0].properties[6]);

  /// see [ProductModalObjectBox.NoOfReviews]
  static final NoOfReviews =
      QueryIntegerProperty<ProductModalObjectBox>(_entities[0].properties[7]);

  /// see [ProductModalObjectBox.createdAt]
  static final createdAt =
      QueryStringProperty<ProductModalObjectBox>(_entities[0].properties[8]);

  /// see [ProductModalObjectBox.time]
  static final time =
      QueryStringProperty<ProductModalObjectBox>(_entities[0].properties[9]);
}
