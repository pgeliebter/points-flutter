import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'accounts_record.g.dart';

abstract class AccountsRecord
    implements Built<AccountsRecord, AccountsRecordBuilder> {
  static Serializer<AccountsRecord> get serializer =>
      _$accountsRecordSerializer;

  @BuiltValueField(wireName: 'user_reference')
  DocumentReference? get userReference;

  String? get company;

  int? get points;

  DateTime? get expiration;

  String? get username;

  String? get password;

  String? get nickname;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AccountsRecordBuilder builder) => builder
    ..company = ''
    ..points = 0
    ..username = ''
    ..password = ''
    ..nickname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accounts');

  static Stream<AccountsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AccountsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AccountsRecord._();
  factory AccountsRecord([void Function(AccountsRecordBuilder) updates]) =
      _$AccountsRecord;

  static AccountsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAccountsRecordData({
  DocumentReference? userReference,
  String? company,
  int? points,
  DateTime? expiration,
  String? username,
  String? password,
  String? nickname,
}) {
  final firestoreData = serializers.toFirestore(
    AccountsRecord.serializer,
    AccountsRecord(
      (a) => a
        ..userReference = userReference
        ..company = company
        ..points = points
        ..expiration = expiration
        ..username = username
        ..password = password
        ..nickname = nickname,
    ),
  );

  return firestoreData;
}
