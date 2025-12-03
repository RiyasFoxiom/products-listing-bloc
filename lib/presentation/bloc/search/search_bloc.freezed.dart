// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchProducts value)?  searchProducts,TResult Function( ClearSearch value)?  clearSearch,TResult Function( SortBy value)?  sortBy,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchProducts() when searchProducts != null:
return searchProducts(_that);case ClearSearch() when clearSearch != null:
return clearSearch(_that);case SortBy() when sortBy != null:
return sortBy(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchProducts value)  searchProducts,required TResult Function( ClearSearch value)  clearSearch,required TResult Function( SortBy value)  sortBy,}){
final _that = this;
switch (_that) {
case SearchProducts():
return searchProducts(_that);case ClearSearch():
return clearSearch(_that);case SortBy():
return sortBy(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchProducts value)?  searchProducts,TResult? Function( ClearSearch value)?  clearSearch,TResult? Function( SortBy value)?  sortBy,}){
final _that = this;
switch (_that) {
case SearchProducts() when searchProducts != null:
return searchProducts(_that);case ClearSearch() when clearSearch != null:
return clearSearch(_that);case SortBy() when sortBy != null:
return sortBy(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query,  String sortBy)?  searchProducts,TResult Function()?  clearSearch,TResult Function( String sortOption)?  sortBy,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchProducts() when searchProducts != null:
return searchProducts(_that.query,_that.sortBy);case ClearSearch() when clearSearch != null:
return clearSearch();case SortBy() when sortBy != null:
return sortBy(_that.sortOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query,  String sortBy)  searchProducts,required TResult Function()  clearSearch,required TResult Function( String sortOption)  sortBy,}) {final _that = this;
switch (_that) {
case SearchProducts():
return searchProducts(_that.query,_that.sortBy);case ClearSearch():
return clearSearch();case SortBy():
return sortBy(_that.sortOption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query,  String sortBy)?  searchProducts,TResult? Function()?  clearSearch,TResult? Function( String sortOption)?  sortBy,}) {final _that = this;
switch (_that) {
case SearchProducts() when searchProducts != null:
return searchProducts(_that.query,_that.sortBy);case ClearSearch() when clearSearch != null:
return clearSearch();case SortBy() when sortBy != null:
return sortBy(_that.sortOption);case _:
  return null;

}
}

}

/// @nodoc


class SearchProducts implements SearchEvent {
  const SearchProducts({required this.query, required this.sortBy});
  

 final  String query;
 final  String sortBy;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchProductsCopyWith<SearchProducts> get copyWith => _$SearchProductsCopyWithImpl<SearchProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchProducts&&(identical(other.query, query) || other.query == query)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}


@override
int get hashCode => Object.hash(runtimeType,query,sortBy);

@override
String toString() {
  return 'SearchEvent.searchProducts(query: $query, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class $SearchProductsCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchProductsCopyWith(SearchProducts value, $Res Function(SearchProducts) _then) = _$SearchProductsCopyWithImpl;
@useResult
$Res call({
 String query, String sortBy
});




}
/// @nodoc
class _$SearchProductsCopyWithImpl<$Res>
    implements $SearchProductsCopyWith<$Res> {
  _$SearchProductsCopyWithImpl(this._self, this._then);

  final SearchProducts _self;
  final $Res Function(SearchProducts) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? sortBy = null,}) {
  return _then(SearchProducts(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearSearch implements SearchEvent {
  const ClearSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.clearSearch()';
}


}




/// @nodoc


class SortBy implements SearchEvent {
  const SortBy({required this.sortOption});
  

 final  String sortOption;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortByCopyWith<SortBy> get copyWith => _$SortByCopyWithImpl<SortBy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SortBy&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,sortOption);

@override
String toString() {
  return 'SearchEvent.sortBy(sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class $SortByCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SortByCopyWith(SortBy value, $Res Function(SortBy) _then) = _$SortByCopyWithImpl;
@useResult
$Res call({
 String sortOption
});




}
/// @nodoc
class _$SortByCopyWithImpl<$Res>
    implements $SortByCopyWith<$Res> {
  _$SortByCopyWithImpl(this._self, this._then);

  final SortBy _self;
  final $Res Function(SortBy) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortOption = null,}) {
  return _then(SortBy(
sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 List<ProductsResponse> get results; bool get isLoading; bool get isError; String? get errorMessage; String get searchQuery; String get sortOption;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results),isLoading,isError,errorMessage,searchQuery,sortOption);

@override
String toString() {
  return 'SearchState(results: $results, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, searchQuery: $searchQuery, sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<ProductsResponse> results, bool isLoading, bool isError, String? errorMessage, String searchQuery, String sortOption
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? isLoading = null,Object? isError = null,Object? errorMessage = freezed,Object? searchQuery = null,Object? sortOption = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ProductsResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductsResponse> results,  bool isLoading,  bool isError,  String? errorMessage,  String searchQuery,  String sortOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.results,_that.isLoading,_that.isError,_that.errorMessage,_that.searchQuery,_that.sortOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductsResponse> results,  bool isLoading,  bool isError,  String? errorMessage,  String searchQuery,  String sortOption)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.results,_that.isLoading,_that.isError,_that.errorMessage,_that.searchQuery,_that.sortOption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductsResponse> results,  bool isLoading,  bool isError,  String? errorMessage,  String searchQuery,  String sortOption)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.results,_that.isLoading,_that.isError,_that.errorMessage,_that.searchQuery,_that.sortOption);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required final  List<ProductsResponse> results, required this.isLoading, required this.isError, required this.errorMessage, required this.searchQuery, required this.sortOption}): _results = results;
  

 final  List<ProductsResponse> _results;
@override List<ProductsResponse> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  bool isLoading;
@override final  bool isError;
@override final  String? errorMessage;
@override final  String searchQuery;
@override final  String sortOption;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),isLoading,isError,errorMessage,searchQuery,sortOption);

@override
String toString() {
  return 'SearchState(results: $results, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, searchQuery: $searchQuery, sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<ProductsResponse> results, bool isLoading, bool isError, String? errorMessage, String searchQuery, String sortOption
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? isLoading = null,Object? isError = null,Object? errorMessage = freezed,Object? searchQuery = null,Object? sortOption = null,}) {
  return _then(_SearchState(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ProductsResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
