import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemdetailsRecord extends FirestoreRecord {
  ItemdetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "modifiers" field.
  List<String>? _modifiers;
  List<String> get modifiers => _modifiers ?? const [];
  bool hasModifiers() => _modifiers != null;

  // "modifiers1" field.
  List<String>? _modifiers1;
  List<String> get modifiers1 => _modifiers1 ?? const [];
  bool hasModifiers1() => _modifiers1 != null;

  // "itemphoto" field.
  String? _itemphoto;
  String get itemphoto => _itemphoto ?? '';
  bool hasItemphoto() => _itemphoto != null;

  // "cartref" field.
  DocumentReference? _cartref;
  DocumentReference? get cartref => _cartref;
  bool hasCartref() => _cartref != null;

  // "cartitemref" field.
  DocumentReference? _cartitemref;
  DocumentReference? get cartitemref => _cartitemref;
  bool hasCartitemref() => _cartitemref != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _modifiers = getDataList(snapshotData['modifiers']);
    _modifiers1 = getDataList(snapshotData['modifiers1']);
    _itemphoto = snapshotData['itemphoto'] as String?;
    _cartref = snapshotData['cartref'] as DocumentReference?;
    _cartitemref = snapshotData['cartitemref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemdetails');

  static Stream<ItemdetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemdetailsRecord.fromSnapshot(s));

  static Future<ItemdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemdetailsRecord.fromSnapshot(s));

  static ItemdetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemdetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemdetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemdetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemdetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemdetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemdetailsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  int? quantity,
  String? itemphoto,
  DocumentReference? cartref,
  DocumentReference? cartitemref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'quantity': quantity,
      'itemphoto': itemphoto,
      'cartref': cartref,
      'cartitemref': cartitemref,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemdetailsRecordDocumentEquality implements Equality<ItemdetailsRecord> {
  const ItemdetailsRecordDocumentEquality();

  @override
  bool equals(ItemdetailsRecord? e1, ItemdetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        listEquality.equals(e1?.modifiers, e2?.modifiers) &&
        listEquality.equals(e1?.modifiers1, e2?.modifiers1) &&
        e1?.itemphoto == e2?.itemphoto &&
        e1?.cartref == e2?.cartref &&
        e1?.cartitemref == e2?.cartitemref;
  }

  @override
  int hash(ItemdetailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.quantity,
        e?.modifiers,
        e?.modifiers1,
        e?.itemphoto,
        e?.cartref,
        e?.cartitemref
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemdetailsRecord;
}
