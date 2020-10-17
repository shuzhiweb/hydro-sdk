// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidLiteral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidLiteral _$SwidLiteralFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidBooleanLiteral':
      return _$FromSwidBooleanLiteral.fromJson(json);
    case 'fromSwidStringLiteral':
      return _$FromSwidStringLiteral.fromJson(json);
    case 'fromSwidIntegerLiteral':
      return _$FromSwidIntegerLiteral.fromJson(json);
    case 'fromSwidStaticConstFunctionInvocation':
      return _$FromSwidStaticConstFunctionInvocation.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidLiteralTearOff {
  const _$SwidLiteralTearOff();

// ignore: unused_element
  _$FromSwidBooleanLiteral fromSwidBooleanLiteral(
      {@required SwidBooleanLiteral swidBooleanLiteral}) {
    return _$FromSwidBooleanLiteral(
      swidBooleanLiteral: swidBooleanLiteral,
    );
  }

// ignore: unused_element
  _$FromSwidStringLiteral fromSwidStringLiteral(
      {@required SwidStringLiteral swidStringLiteral}) {
    return _$FromSwidStringLiteral(
      swidStringLiteral: swidStringLiteral,
    );
  }

// ignore: unused_element
  _$FromSwidIntegerLiteral fromSwidIntegerLiteral(
      {@required SwidIntegerLiteral swidIntegerLiteral}) {
    return _$FromSwidIntegerLiteral(
      swidIntegerLiteral: swidIntegerLiteral,
    );
  }

// ignore: unused_element
  _$FromSwidStaticConstFunctionInvocation fromSwidStaticConstFunctionInvocation(
      {@required
          SwidStaticConstFunctionInvocation staticConstFunctionInvocation}) {
    return _$FromSwidStaticConstFunctionInvocation(
      staticConstFunctionInvocation: staticConstFunctionInvocation,
    );
  }

// ignore: unused_element
  SwidLiteral fromJson(Map<String, Object> json) {
    return SwidLiteral.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidLiteral = _$SwidLiteralTearOff();

/// @nodoc
mixin _$SwidLiteral {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    @required Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    @required
        Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    Result fromSwidStaticConstFunctionInvocation(
        SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    @required Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    @required Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            _$FromSwidStaticConstFunctionInvocation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    Result fromSwidStaticConstFunctionInvocation(
        _$FromSwidStaticConstFunctionInvocation value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $SwidLiteralCopyWith<$Res> {
  factory $SwidLiteralCopyWith(
          SwidLiteral value, $Res Function(SwidLiteral) then) =
      _$SwidLiteralCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidLiteralCopyWithImpl<$Res> implements $SwidLiteralCopyWith<$Res> {
  _$SwidLiteralCopyWithImpl(this._value, this._then);

  final SwidLiteral _value;
  // ignore: unused_field
  final $Res Function(SwidLiteral) _then;
}

/// @nodoc
abstract class _$$FromSwidBooleanLiteralCopyWith<$Res> {
  factory _$$FromSwidBooleanLiteralCopyWith(_$FromSwidBooleanLiteral value,
          $Res Function(_$FromSwidBooleanLiteral) then) =
      __$$FromSwidBooleanLiteralCopyWithImpl<$Res>;
  $Res call({SwidBooleanLiteral swidBooleanLiteral});

  $SwidBooleanLiteralCopyWith<$Res> get swidBooleanLiteral;
}

/// @nodoc
class __$$FromSwidBooleanLiteralCopyWithImpl<$Res>
    extends _$SwidLiteralCopyWithImpl<$Res>
    implements _$$FromSwidBooleanLiteralCopyWith<$Res> {
  __$$FromSwidBooleanLiteralCopyWithImpl(_$FromSwidBooleanLiteral _value,
      $Res Function(_$FromSwidBooleanLiteral) _then)
      : super(_value, (v) => _then(v as _$FromSwidBooleanLiteral));

  @override
  _$FromSwidBooleanLiteral get _value =>
      super._value as _$FromSwidBooleanLiteral;

  @override
  $Res call({
    Object swidBooleanLiteral = freezed,
  }) {
    return _then(_$FromSwidBooleanLiteral(
      swidBooleanLiteral: swidBooleanLiteral == freezed
          ? _value.swidBooleanLiteral
          : swidBooleanLiteral as SwidBooleanLiteral,
    ));
  }

  @override
  $SwidBooleanLiteralCopyWith<$Res> get swidBooleanLiteral {
    if (_value.swidBooleanLiteral == null) {
      return null;
    }
    return $SwidBooleanLiteralCopyWith<$Res>(_value.swidBooleanLiteral,
        (value) {
      return _then(_value.copyWith(swidBooleanLiteral: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromSwidBooleanLiteral implements _$FromSwidBooleanLiteral {
  _$_$FromSwidBooleanLiteral({@required this.swidBooleanLiteral})
      : assert(swidBooleanLiteral != null);

  factory _$_$FromSwidBooleanLiteral.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidBooleanLiteralFromJson(json);

  @override
  final SwidBooleanLiteral swidBooleanLiteral;

  @override
  String toString() {
    return 'SwidLiteral.fromSwidBooleanLiteral(swidBooleanLiteral: $swidBooleanLiteral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidBooleanLiteral &&
            (identical(other.swidBooleanLiteral, swidBooleanLiteral) ||
                const DeepCollectionEquality()
                    .equals(other.swidBooleanLiteral, swidBooleanLiteral)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidBooleanLiteral);

  @override
  _$$FromSwidBooleanLiteralCopyWith<_$FromSwidBooleanLiteral> get copyWith =>
      __$$FromSwidBooleanLiteralCopyWithImpl<_$FromSwidBooleanLiteral>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    @required Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    @required
        Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidBooleanLiteral(swidBooleanLiteral);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    Result fromSwidStaticConstFunctionInvocation(
        SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidBooleanLiteral != null) {
      return fromSwidBooleanLiteral(swidBooleanLiteral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    @required Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    @required Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            _$FromSwidStaticConstFunctionInvocation value),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidBooleanLiteral(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    Result fromSwidStaticConstFunctionInvocation(
        _$FromSwidStaticConstFunctionInvocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidBooleanLiteral != null) {
      return fromSwidBooleanLiteral(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidBooleanLiteralToJson(this)
      ..['runtimeType'] = 'fromSwidBooleanLiteral';
  }
}

abstract class _$FromSwidBooleanLiteral implements SwidLiteral {
  factory _$FromSwidBooleanLiteral(
          {@required SwidBooleanLiteral swidBooleanLiteral}) =
      _$_$FromSwidBooleanLiteral;

  factory _$FromSwidBooleanLiteral.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidBooleanLiteral.fromJson;

  SwidBooleanLiteral get swidBooleanLiteral;
  _$$FromSwidBooleanLiteralCopyWith<_$FromSwidBooleanLiteral> get copyWith;
}

/// @nodoc
abstract class _$$FromSwidStringLiteralCopyWith<$Res> {
  factory _$$FromSwidStringLiteralCopyWith(_$FromSwidStringLiteral value,
          $Res Function(_$FromSwidStringLiteral) then) =
      __$$FromSwidStringLiteralCopyWithImpl<$Res>;
  $Res call({SwidStringLiteral swidStringLiteral});

  $SwidStringLiteralCopyWith<$Res> get swidStringLiteral;
}

/// @nodoc
class __$$FromSwidStringLiteralCopyWithImpl<$Res>
    extends _$SwidLiteralCopyWithImpl<$Res>
    implements _$$FromSwidStringLiteralCopyWith<$Res> {
  __$$FromSwidStringLiteralCopyWithImpl(_$FromSwidStringLiteral _value,
      $Res Function(_$FromSwidStringLiteral) _then)
      : super(_value, (v) => _then(v as _$FromSwidStringLiteral));

  @override
  _$FromSwidStringLiteral get _value => super._value as _$FromSwidStringLiteral;

  @override
  $Res call({
    Object swidStringLiteral = freezed,
  }) {
    return _then(_$FromSwidStringLiteral(
      swidStringLiteral: swidStringLiteral == freezed
          ? _value.swidStringLiteral
          : swidStringLiteral as SwidStringLiteral,
    ));
  }

  @override
  $SwidStringLiteralCopyWith<$Res> get swidStringLiteral {
    if (_value.swidStringLiteral == null) {
      return null;
    }
    return $SwidStringLiteralCopyWith<$Res>(_value.swidStringLiteral, (value) {
      return _then(_value.copyWith(swidStringLiteral: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromSwidStringLiteral implements _$FromSwidStringLiteral {
  _$_$FromSwidStringLiteral({@required this.swidStringLiteral})
      : assert(swidStringLiteral != null);

  factory _$_$FromSwidStringLiteral.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidStringLiteralFromJson(json);

  @override
  final SwidStringLiteral swidStringLiteral;

  @override
  String toString() {
    return 'SwidLiteral.fromSwidStringLiteral(swidStringLiteral: $swidStringLiteral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidStringLiteral &&
            (identical(other.swidStringLiteral, swidStringLiteral) ||
                const DeepCollectionEquality()
                    .equals(other.swidStringLiteral, swidStringLiteral)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidStringLiteral);

  @override
  _$$FromSwidStringLiteralCopyWith<_$FromSwidStringLiteral> get copyWith =>
      __$$FromSwidStringLiteralCopyWithImpl<_$FromSwidStringLiteral>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    @required Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    @required
        Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidStringLiteral(swidStringLiteral);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    Result fromSwidStaticConstFunctionInvocation(
        SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidStringLiteral != null) {
      return fromSwidStringLiteral(swidStringLiteral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    @required Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    @required Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            _$FromSwidStaticConstFunctionInvocation value),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidStringLiteral(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    Result fromSwidStaticConstFunctionInvocation(
        _$FromSwidStaticConstFunctionInvocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidStringLiteral != null) {
      return fromSwidStringLiteral(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidStringLiteralToJson(this)
      ..['runtimeType'] = 'fromSwidStringLiteral';
  }
}

abstract class _$FromSwidStringLiteral implements SwidLiteral {
  factory _$FromSwidStringLiteral(
          {@required SwidStringLiteral swidStringLiteral}) =
      _$_$FromSwidStringLiteral;

  factory _$FromSwidStringLiteral.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidStringLiteral.fromJson;

  SwidStringLiteral get swidStringLiteral;
  _$$FromSwidStringLiteralCopyWith<_$FromSwidStringLiteral> get copyWith;
}

/// @nodoc
abstract class _$$FromSwidIntegerLiteralCopyWith<$Res> {
  factory _$$FromSwidIntegerLiteralCopyWith(_$FromSwidIntegerLiteral value,
          $Res Function(_$FromSwidIntegerLiteral) then) =
      __$$FromSwidIntegerLiteralCopyWithImpl<$Res>;
  $Res call({SwidIntegerLiteral swidIntegerLiteral});

  $SwidIntegerLiteralCopyWith<$Res> get swidIntegerLiteral;
}

/// @nodoc
class __$$FromSwidIntegerLiteralCopyWithImpl<$Res>
    extends _$SwidLiteralCopyWithImpl<$Res>
    implements _$$FromSwidIntegerLiteralCopyWith<$Res> {
  __$$FromSwidIntegerLiteralCopyWithImpl(_$FromSwidIntegerLiteral _value,
      $Res Function(_$FromSwidIntegerLiteral) _then)
      : super(_value, (v) => _then(v as _$FromSwidIntegerLiteral));

  @override
  _$FromSwidIntegerLiteral get _value =>
      super._value as _$FromSwidIntegerLiteral;

  @override
  $Res call({
    Object swidIntegerLiteral = freezed,
  }) {
    return _then(_$FromSwidIntegerLiteral(
      swidIntegerLiteral: swidIntegerLiteral == freezed
          ? _value.swidIntegerLiteral
          : swidIntegerLiteral as SwidIntegerLiteral,
    ));
  }

  @override
  $SwidIntegerLiteralCopyWith<$Res> get swidIntegerLiteral {
    if (_value.swidIntegerLiteral == null) {
      return null;
    }
    return $SwidIntegerLiteralCopyWith<$Res>(_value.swidIntegerLiteral,
        (value) {
      return _then(_value.copyWith(swidIntegerLiteral: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromSwidIntegerLiteral implements _$FromSwidIntegerLiteral {
  _$_$FromSwidIntegerLiteral({@required this.swidIntegerLiteral})
      : assert(swidIntegerLiteral != null);

  factory _$_$FromSwidIntegerLiteral.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidIntegerLiteralFromJson(json);

  @override
  final SwidIntegerLiteral swidIntegerLiteral;

  @override
  String toString() {
    return 'SwidLiteral.fromSwidIntegerLiteral(swidIntegerLiteral: $swidIntegerLiteral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidIntegerLiteral &&
            (identical(other.swidIntegerLiteral, swidIntegerLiteral) ||
                const DeepCollectionEquality()
                    .equals(other.swidIntegerLiteral, swidIntegerLiteral)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidIntegerLiteral);

  @override
  _$$FromSwidIntegerLiteralCopyWith<_$FromSwidIntegerLiteral> get copyWith =>
      __$$FromSwidIntegerLiteralCopyWithImpl<_$FromSwidIntegerLiteral>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    @required Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    @required
        Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidIntegerLiteral(swidIntegerLiteral);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    Result fromSwidStaticConstFunctionInvocation(
        SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidIntegerLiteral != null) {
      return fromSwidIntegerLiteral(swidIntegerLiteral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    @required Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    @required Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            _$FromSwidStaticConstFunctionInvocation value),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidIntegerLiteral(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    Result fromSwidStaticConstFunctionInvocation(
        _$FromSwidStaticConstFunctionInvocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidIntegerLiteral != null) {
      return fromSwidIntegerLiteral(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidIntegerLiteralToJson(this)
      ..['runtimeType'] = 'fromSwidIntegerLiteral';
  }
}

abstract class _$FromSwidIntegerLiteral implements SwidLiteral {
  factory _$FromSwidIntegerLiteral(
          {@required SwidIntegerLiteral swidIntegerLiteral}) =
      _$_$FromSwidIntegerLiteral;

  factory _$FromSwidIntegerLiteral.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidIntegerLiteral.fromJson;

  SwidIntegerLiteral get swidIntegerLiteral;
  _$$FromSwidIntegerLiteralCopyWith<_$FromSwidIntegerLiteral> get copyWith;
}

/// @nodoc
abstract class _$$FromSwidStaticConstFunctionInvocationCopyWith<$Res> {
  factory _$$FromSwidStaticConstFunctionInvocationCopyWith(
          _$FromSwidStaticConstFunctionInvocation value,
          $Res Function(_$FromSwidStaticConstFunctionInvocation) then) =
      __$$FromSwidStaticConstFunctionInvocationCopyWithImpl<$Res>;
  $Res call({SwidStaticConstFunctionInvocation staticConstFunctionInvocation});

  $SwidStaticConstFunctionInvocationCopyWith<$Res>
      get staticConstFunctionInvocation;
}

/// @nodoc
class __$$FromSwidStaticConstFunctionInvocationCopyWithImpl<$Res>
    extends _$SwidLiteralCopyWithImpl<$Res>
    implements _$$FromSwidStaticConstFunctionInvocationCopyWith<$Res> {
  __$$FromSwidStaticConstFunctionInvocationCopyWithImpl(
      _$FromSwidStaticConstFunctionInvocation _value,
      $Res Function(_$FromSwidStaticConstFunctionInvocation) _then)
      : super(
            _value, (v) => _then(v as _$FromSwidStaticConstFunctionInvocation));

  @override
  _$FromSwidStaticConstFunctionInvocation get _value =>
      super._value as _$FromSwidStaticConstFunctionInvocation;

  @override
  $Res call({
    Object staticConstFunctionInvocation = freezed,
  }) {
    return _then(_$FromSwidStaticConstFunctionInvocation(
      staticConstFunctionInvocation: staticConstFunctionInvocation == freezed
          ? _value.staticConstFunctionInvocation
          : staticConstFunctionInvocation as SwidStaticConstFunctionInvocation,
    ));
  }

  @override
  $SwidStaticConstFunctionInvocationCopyWith<$Res>
      get staticConstFunctionInvocation {
    if (_value.staticConstFunctionInvocation == null) {
      return null;
    }
    return $SwidStaticConstFunctionInvocationCopyWith<$Res>(
        _value.staticConstFunctionInvocation, (value) {
      return _then(_value.copyWith(staticConstFunctionInvocation: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$FromSwidStaticConstFunctionInvocation
    implements _$FromSwidStaticConstFunctionInvocation {
  _$_$FromSwidStaticConstFunctionInvocation(
      {@required this.staticConstFunctionInvocation})
      : assert(staticConstFunctionInvocation != null);

  factory _$_$FromSwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$FromSwidStaticConstFunctionInvocationFromJson(json);

  @override
  final SwidStaticConstFunctionInvocation staticConstFunctionInvocation;

  @override
  String toString() {
    return 'SwidLiteral.fromSwidStaticConstFunctionInvocation(staticConstFunctionInvocation: $staticConstFunctionInvocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidStaticConstFunctionInvocation &&
            (identical(other.staticConstFunctionInvocation,
                    staticConstFunctionInvocation) ||
                const DeepCollectionEquality().equals(
                    other.staticConstFunctionInvocation,
                    staticConstFunctionInvocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(staticConstFunctionInvocation);

  @override
  _$$FromSwidStaticConstFunctionInvocationCopyWith<
          _$FromSwidStaticConstFunctionInvocation>
      get copyWith => __$$FromSwidStaticConstFunctionInvocationCopyWithImpl<
          _$FromSwidStaticConstFunctionInvocation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    @required Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    @required
        Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidStaticConstFunctionInvocation(staticConstFunctionInvocation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidBooleanLiteral(SwidBooleanLiteral swidBooleanLiteral),
    Result fromSwidStringLiteral(SwidStringLiteral swidStringLiteral),
    Result fromSwidIntegerLiteral(SwidIntegerLiteral swidIntegerLiteral),
    Result fromSwidStaticConstFunctionInvocation(
        SwidStaticConstFunctionInvocation staticConstFunctionInvocation),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidStaticConstFunctionInvocation != null) {
      return fromSwidStaticConstFunctionInvocation(
          staticConstFunctionInvocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    @required Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    @required Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    @required
        Result fromSwidStaticConstFunctionInvocation(
            _$FromSwidStaticConstFunctionInvocation value),
  }) {
    assert(fromSwidBooleanLiteral != null);
    assert(fromSwidStringLiteral != null);
    assert(fromSwidIntegerLiteral != null);
    assert(fromSwidStaticConstFunctionInvocation != null);
    return fromSwidStaticConstFunctionInvocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidBooleanLiteral(_$FromSwidBooleanLiteral value),
    Result fromSwidStringLiteral(_$FromSwidStringLiteral value),
    Result fromSwidIntegerLiteral(_$FromSwidIntegerLiteral value),
    Result fromSwidStaticConstFunctionInvocation(
        _$FromSwidStaticConstFunctionInvocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidStaticConstFunctionInvocation != null) {
      return fromSwidStaticConstFunctionInvocation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidStaticConstFunctionInvocationToJson(this)
      ..['runtimeType'] = 'fromSwidStaticConstFunctionInvocation';
  }
}

abstract class _$FromSwidStaticConstFunctionInvocation implements SwidLiteral {
  factory _$FromSwidStaticConstFunctionInvocation(
          {@required
              SwidStaticConstFunctionInvocation
                  staticConstFunctionInvocation}) =
      _$_$FromSwidStaticConstFunctionInvocation;

  factory _$FromSwidStaticConstFunctionInvocation.fromJson(
          Map<String, dynamic> json) =
      _$_$FromSwidStaticConstFunctionInvocation.fromJson;

  SwidStaticConstFunctionInvocation get staticConstFunctionInvocation;
  _$$FromSwidStaticConstFunctionInvocationCopyWith<
      _$FromSwidStaticConstFunctionInvocation> get copyWith;
}
