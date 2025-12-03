// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SingleProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SingleProductEvent()';
}


}

/// @nodoc
class $SingleProductEventCopyWith<$Res>  {
$SingleProductEventCopyWith(SingleProductEvent _, $Res Function(SingleProductEvent) __);
}


/// Adds pattern-matching-related methods to [SingleProductEvent].
extension SingleProductEventPatterns on SingleProductEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initialize value)?  initialize,TResult Function( GetSigleProduct value)?  getSigleProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case GetSigleProduct() when getSigleProduct != null:
return getSigleProduct(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initialize value)  initialize,required TResult Function( GetSigleProduct value)  getSigleProduct,}){
final _that = this;
switch (_that) {
case Initialize():
return initialize(_that);case GetSigleProduct():
return getSigleProduct(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initialize value)?  initialize,TResult? Function( GetSigleProduct value)?  getSigleProduct,}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case GetSigleProduct() when getSigleProduct != null:
return getSigleProduct(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialize,TResult Function( String id)?  getSigleProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case GetSigleProduct() when getSigleProduct != null:
return getSigleProduct(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialize,required TResult Function( String id)  getSigleProduct,}) {final _that = this;
switch (_that) {
case Initialize():
return initialize();case GetSigleProduct():
return getSigleProduct(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialize,TResult? Function( String id)?  getSigleProduct,}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case GetSigleProduct() when getSigleProduct != null:
return getSigleProduct(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class Initialize implements SingleProductEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SingleProductEvent.initialize()';
}


}




/// @nodoc


class GetSigleProduct implements SingleProductEvent {
  const GetSigleProduct({required this.id});
  

 final  String id;

/// Create a copy of SingleProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSigleProductCopyWith<GetSigleProduct> get copyWith => _$GetSigleProductCopyWithImpl<GetSigleProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSigleProduct&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SingleProductEvent.getSigleProduct(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetSigleProductCopyWith<$Res> implements $SingleProductEventCopyWith<$Res> {
  factory $GetSigleProductCopyWith(GetSigleProduct value, $Res Function(GetSigleProduct) _then) = _$GetSigleProductCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetSigleProductCopyWithImpl<$Res>
    implements $GetSigleProductCopyWith<$Res> {
  _$GetSigleProductCopyWithImpl(this._self, this._then);

  final GetSigleProduct _self;
  final $Res Function(GetSigleProduct) _then;

/// Create a copy of SingleProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetSigleProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SingleProductState {

 ProductsResponse? get product; bool get isLoading; bool get isError;
/// Create a copy of SingleProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleProductStateCopyWith<SingleProductState> get copyWith => _$SingleProductStateCopyWithImpl<SingleProductState>(this as SingleProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleProductState&&(identical(other.product, product) || other.product == product)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,product,isLoading,isError);

@override
String toString() {
  return 'SingleProductState(product: $product, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SingleProductStateCopyWith<$Res>  {
  factory $SingleProductStateCopyWith(SingleProductState value, $Res Function(SingleProductState) _then) = _$SingleProductStateCopyWithImpl;
@useResult
$Res call({
 ProductsResponse? product, bool isLoading, bool isError
});




}
/// @nodoc
class _$SingleProductStateCopyWithImpl<$Res>
    implements $SingleProductStateCopyWith<$Res> {
  _$SingleProductStateCopyWithImpl(this._self, this._then);

  final SingleProductState _self;
  final $Res Function(SingleProductState) _then;

/// Create a copy of SingleProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductsResponse?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SingleProductState].
extension SingleProductStatePatterns on SingleProductState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SingleProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SingleProductState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SingleProductState value)  $default,){
final _that = this;
switch (_that) {
case _SingleProductState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SingleProductState value)?  $default,){
final _that = this;
switch (_that) {
case _SingleProductState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductsResponse? product,  bool isLoading,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SingleProductState() when $default != null:
return $default(_that.product,_that.isLoading,_that.isError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductsResponse? product,  bool isLoading,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _SingleProductState():
return $default(_that.product,_that.isLoading,_that.isError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductsResponse? product,  bool isLoading,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _SingleProductState() when $default != null:
return $default(_that.product,_that.isLoading,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _SingleProductState implements SingleProductState {
  const _SingleProductState({this.product, required this.isLoading, required this.isError});
  

@override final  ProductsResponse? product;
@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of SingleProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SingleProductStateCopyWith<_SingleProductState> get copyWith => __$SingleProductStateCopyWithImpl<_SingleProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SingleProductState&&(identical(other.product, product) || other.product == product)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,product,isLoading,isError);

@override
String toString() {
  return 'SingleProductState(product: $product, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$SingleProductStateCopyWith<$Res> implements $SingleProductStateCopyWith<$Res> {
  factory _$SingleProductStateCopyWith(_SingleProductState value, $Res Function(_SingleProductState) _then) = __$SingleProductStateCopyWithImpl;
@override @useResult
$Res call({
 ProductsResponse? product, bool isLoading, bool isError
});




}
/// @nodoc
class __$SingleProductStateCopyWithImpl<$Res>
    implements _$SingleProductStateCopyWith<$Res> {
  __$SingleProductStateCopyWithImpl(this._self, this._then);

  final _SingleProductState _self;
  final $Res Function(_SingleProductState) _then;

/// Create a copy of SingleProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? isLoading = null,Object? isError = null,}) {
  return _then(_SingleProductState(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductsResponse?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
