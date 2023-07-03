import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../data/models/crypto_asset.dart';
import '../../data/repository/repository.dart';

part 'crypto_assets_state.dart';

// ignore: public_member_api_docs
class CryptoAssetsCubit extends Cubit<CryptoAssetsState> {
  final IRepository _repository;

  // ignore: public_member_api_docs, sort_constructors_first
  CryptoAssetsCubit(this._repository) : super(CryptoInitial());

  // ignore: public_member_api_docs
  void getCryptoAssets() {
    _repository.getCryptoAssets().then((cryptoAssets) {
      emit(CryptoLoaded(cryptoAssets: cryptoAssets));
    });
  }
}
