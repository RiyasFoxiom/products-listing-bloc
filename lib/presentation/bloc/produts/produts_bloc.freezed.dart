// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProdutsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdutsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProdutsEvent()';
}


}

/// @nodoc
class $ProdutsEventCopyWith<$Res>  {
$ProdutsEventCopyWith(ProdutsEvent _, $Res Function(ProdutsEvent) __);
}


/// Adds pattern-matching-related methods to [ProdutsEvent].
extension ProdutsEventPatterns on ProdutsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetProducts value)?  getProducts,TResult Function( LoadMore value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetProducts() when getProducts != null:
return getProducts(_that);case LoadMore() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetProducts value)  getProducts,required TResult Function( LoadMore value)  loadMore,}){
final _that = this;
switch (_that) {
case GetProducts():
return getProducts(_that);case LoadMore():
return loadMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetProducts value)?  getProducts,TResult? Function( LoadMore value)?  loadMore,}){
final _that = this;
switch (_that) {
case GetProducts() when getProducts != null:
return getProducts(_that);case LoadMore() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getProducts,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetProducts() when getProducts != null:
return getProducts();case LoadMore() when loadMore != null:
return loadMore();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getProducts,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case GetProducts():
return getProducts();case LoadMore():
return loadMore();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getProducts,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case GetProducts() when getProducts != null:
return getProducts();case LoadMore() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class GetProducts implements ProdutsEvent {
  const GetProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProdutsEvent.getProducts()';
}


}




/// @nodoc


class LoadMore implements ProdutsEvent {
  const LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProdutsEvent.loadMore()';
}


}




/// @nodoc
mixin _$ProdutsState {

 List<ProductsResponse> get products; bool get isLoading; bool get isLoadingMore; bool get isError; String? get errorMessage; int get currentPage;
/// Create a copy of ProdutsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdutsStateCopyWith<ProdutsState> get copyWith => _$ProdutsStateCopyWithImpl<ProdutsState>(this as ProdutsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdutsState&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),isLoading,isLoadingMore,isError,errorMessage,currentPage);

@override
String toString() {
  return 'ProdutsState(products: $products, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isError: $isError, errorMessage: $errorMessage, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $ProdutsStateCopyWith<$Res>  {
  factory $ProdutsStateCopyWith(ProdutsState value, $Res Function(ProdutsState) _then) = _$ProdutsStateCopyWithImpl;
@useResult
$Res call({
 List<ProductsResponse> products, bool isLoading, bool isLoadingMore, bool isError, String? errorMessage, int currentPage
});




}
/// @nodoc
class _$ProdutsStateCopyWithImpl<$Res>
    implements $ProdutsStateCopyWith<$Res> {
  _$ProdutsStateCopyWithImpl(this._self, this._then);

  final ProdutsState _self;
  final $Res Function(ProdutsState) _then;

/// Create a copy of ProdutsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? isLoading = null,Object? isLoadingMore = null,Object? isError = null,Object? errorMessage = freezed,Object? currentPage = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductsResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProdutsState].
extension ProdutsStatePatterns on ProdutsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Initial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Initial value)  $default,){
final _that = this;
switch (_that) {
case _Initial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Initial value)?  $default,){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductsResponse> products,  bool isLoading,  bool isLoadingMore,  bool isError,  String? errorMessage,  int currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.products,_that.isLoading,_that.isLoadingMore,_that.isError,_that.errorMessage,_that.currentPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductsResponse> products,  bool isLoading,  bool isLoadingMore,  bool isError,  String? errorMessage,  int currentPage)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.products,_that.isLoading,_that.isLoadingMore,_that.isError,_that.errorMessage,_that.currentPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductsResponse> products,  bool isLoading,  bool isLoadingMore,  bool isError,  String? errorMessage,  int currentPage)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.products,_that.isLoading,_that.isLoadingMore,_that.isError,_that.errorMessage,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProdutsState {
  const _Initial({required final  List<ProductsResponse> products, required this.isLoading, required this.isLoadingMore, required this.isError, required this.errorMessage, required this.currentPage}): _products = products;
  

 final  List<ProductsResponse> _products;
@override List<ProductsResponse> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  bool isLoading;
@override final  bool isLoadingMore;
@override final  bool isError;
@override final  String? errorMessage;
@override final  int currentPage;

/// Create a copy of ProdutsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),isLoading,isLoadingMore,isError,errorMessage,currentPage);

@override
String toString() {
  return 'ProdutsState(products: $products, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isError: $isError, errorMessage: $errorMessage, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $ProdutsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<ProductsResponse> products, bool isLoading, bool isLoadingMore, bool isError, String? errorMessage, int currentPage
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of ProdutsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? isLoading = null,Object? isLoadingMore = null,Object? isError = null,Object? errorMessage = freezed,Object? currentPage = null,}) {
  return _then(_Initial(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductsResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
