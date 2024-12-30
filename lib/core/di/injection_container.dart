import 'package:get_it/get_it.dart';
import 'package:store/core/app/app_cubit/app_cubit.dart';
import 'package:store/features/auth/data/data_source/auth_data_source.dart';
import 'package:store/features/auth/data/data_source/auth_repo.dart';
import 'package:store/features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjectionContainer() async {
  _initCore();
  _initAuth();
}

void _initCore() {
  sl.registerFactory(AppCubit.new);
}

void _initAuth() {
  sl
    ..registerFactory(() => AuthBloc(sl()))
    ..registerLazySingleton(() => AuthRepo(sl()))
    ..registerLazySingleton(() => AuthDataSource(sl()));
}
