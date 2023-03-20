// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountsRecord> _$accountsRecordSerializer =
    new _$AccountsRecordSerializer();

class _$AccountsRecordSerializer
    implements StructuredSerializer<AccountsRecord> {
  @override
  final Iterable<Type> types = const [AccountsRecord, _$AccountsRecord];
  @override
  final String wireName = 'AccountsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AccountsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userReference;
    if (value != null) {
      result
        ..add('user_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.points;
    if (value != null) {
      result
        ..add('points')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expiration;
    if (value != null) {
      result
        ..add('expiration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nickname;
    if (value != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AccountsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_reference':
          result.userReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expiration':
          result.expiration = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountsRecord extends AccountsRecord {
  @override
  final DocumentReference<Object?>? userReference;
  @override
  final String? company;
  @override
  final int? points;
  @override
  final DateTime? expiration;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? nickname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AccountsRecord([void Function(AccountsRecordBuilder)? updates]) =>
      (new AccountsRecordBuilder()..update(updates))._build();

  _$AccountsRecord._(
      {this.userReference,
      this.company,
      this.points,
      this.expiration,
      this.username,
      this.password,
      this.nickname,
      this.ffRef})
      : super._();

  @override
  AccountsRecord rebuild(void Function(AccountsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountsRecordBuilder toBuilder() =>
      new AccountsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountsRecord &&
        userReference == other.userReference &&
        company == other.company &&
        points == other.points &&
        expiration == other.expiration &&
        username == other.username &&
        password == other.password &&
        nickname == other.nickname &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, userReference.hashCode),
                                company.hashCode),
                            points.hashCode),
                        expiration.hashCode),
                    username.hashCode),
                password.hashCode),
            nickname.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountsRecord')
          ..add('userReference', userReference)
          ..add('company', company)
          ..add('points', points)
          ..add('expiration', expiration)
          ..add('username', username)
          ..add('password', password)
          ..add('nickname', nickname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AccountsRecordBuilder
    implements Builder<AccountsRecord, AccountsRecordBuilder> {
  _$AccountsRecord? _$v;

  DocumentReference<Object?>? _userReference;
  DocumentReference<Object?>? get userReference => _$this._userReference;
  set userReference(DocumentReference<Object?>? userReference) =>
      _$this._userReference = userReference;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  int? _points;
  int? get points => _$this._points;
  set points(int? points) => _$this._points = points;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AccountsRecordBuilder() {
    AccountsRecord._initializeBuilder(this);
  }

  AccountsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userReference = $v.userReference;
      _company = $v.company;
      _points = $v.points;
      _expiration = $v.expiration;
      _username = $v.username;
      _password = $v.password;
      _nickname = $v.nickname;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountsRecord;
  }

  @override
  void update(void Function(AccountsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountsRecord build() => _build();

  _$AccountsRecord _build() {
    final _$result = _$v ??
        new _$AccountsRecord._(
            userReference: userReference,
            company: company,
            points: points,
            expiration: expiration,
            username: username,
            password: password,
            nickname: nickname,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
