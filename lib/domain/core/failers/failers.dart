import 'package:freezed_annotation/freezed_annotation.dart';

part 'failers.freezed.dart';

@freezed
class MainFailers with _$MainFailers {
  const factory MainFailers.clientFailure() = _ClientFailure;
  const factory MainFailers.serverFailure() = _ServerFailure;
}
