import 'package:get_it/get_it.dart';
import 'package:store/core/app/app_cubit/app_cubit.dart';

final sl = GetIt.instance;

Future<void> setupInjectionContainer() async {
  _initCore();
}

void _initCore() {
  sl.registerFactory(AppCubit.new);
}
