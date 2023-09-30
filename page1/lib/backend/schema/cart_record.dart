import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "itemcount" field.
  int? _itemcount;
  int get itemcount => _itemcount ?? 0;
  bool hasItemcount() => _itemcount != null;

  // "cartactive" field.
  bool? _cartactive;
  bool get cartactive => _cartactive ?? false;
  bool hasCartactive() => _cartactive != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "cartitems" field.
  List<DocumentReference>? _cartitems;
  List<DocumentReference> get cartitems => _cartitems ?? const [];
  bool hasCartitems() => _cartitems != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _itemcount = castToType<int>(snapshotData['itemcount']);
    _cartactive = snapshotData['cartactive'] as bool?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _cartitems = getDataList(snapshotData['cartitems']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? userref,
  int? itemcount,
  bool? cartactive,
  double? subtotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'itemcount': itemcount,
      'cartactive': cartactive,
      'subtotal': subtotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        e1?.itemcount == e2?.itemcount &&
        e1?.cartactive == e2?.cartactive &&
        e1?.subtotal == e2?.subtotal &&
        listEquality.equals(e1?.cartitems, e2?.cartitems);
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash(
      [e?.userref, e?.itemcount, e?.cartactive, e?.subtotal, e?.cartitems]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
