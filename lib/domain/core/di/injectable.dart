import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configInjection() async {
  getIt.init();
}
