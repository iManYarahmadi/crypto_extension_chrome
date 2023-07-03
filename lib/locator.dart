
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'feature_home/data/data_source/remote/network_service.dart';
import 'feature_home/data/repository/repository.dart';

GetIt injector = GetIt.instance;

// ignore: public_member_api_docs
void initializeDependency() {
  injector.registerSingleton<Dio>(Dio());

  // ignore: cascade_invocations
  injector
      .registerSingleton<INetworkService>(NetworkService(injector.get<Dio>()));
  // ignore: cascade_invocations
  injector.registerSingleton<IRepository>(
      Repository(injector.get<INetworkService>()));
}
