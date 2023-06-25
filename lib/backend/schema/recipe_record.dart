import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeRecord extends FirestoreRecord {
  RecipeRecord._(
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

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "recipe_detail" field.
  String? _recipeDetail;
  String get recipeDetail => _recipeDetail ?? '';
  bool hasRecipeDetail() => _recipeDetail != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _recipeDetail = snapshotData['recipe_detail'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recipe');

  static Stream<RecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipeRecord.fromSnapshot(s));

  static Future<RecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipeRecord.fromSnapshot(s));

  static RecipeRecord fromSnapshot(DocumentSnapshot snapshot) => RecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipeRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  String? recipeDetail,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'created_at': createdAt,
      'recipe_detail': recipeDetail,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}
