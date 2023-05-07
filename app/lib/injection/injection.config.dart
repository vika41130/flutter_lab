// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../services/cache_service.dart' as _i3;
import '../services/service_region.dart' as _i8;
import '../stream/injectable_scope_change.dart' as _i6;
import '../third_party/new_model.dart' as _i7;
import '../third_party/third_party_module.dart' as _i10;
import '../widgets/region_widget.dart' as _i9;

const String _vietnam = 'vietnam';
const String _malaysia = 'malaysia';
const String _indonesia = 'indonesia';
const String _china = 'china';
const String _japan = 'japan';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyModule = _$ThirdPartyModule();
    gh.lazySingleton<_i3.CacheService>(() => _i3.CacheService());
    gh.lazySingleton<_i4.Client>(() => thirdPartyModule.httpClient);
    gh.lazySingleton<_i5.Dio>(() => thirdPartyModule.dio);
    gh.lazySingleton<_i6.InjectableScopeChangeStream>(
        () => _i6.InjectableScopeChangeStream());
    gh.lazySingleton<_i7.NewModel>(() => thirdPartyModule.newModel);
    gh.factory<_i8.Service>(
      () => _i8.SoutheastAsia(),
      registerFor: {
        _vietnam,
        _malaysia,
        _indonesia,
      },
    );
    gh.factory<_i8.Service>(
      () => _i8.EastAsia(),
      registerFor: {
        _china,
        _japan,
      },
    );
    return this;
  }

// initializes the registration of SoutheastAsia-scope dependencies inside of GetIt
  _i1.GetIt initSoutheastAsiaScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'SoutheastAsia',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.lazySingleton<_i8.Demo>(
          () => _i8.Demo(),
          dispose: _i8.disposeDemo,
        );
        gh.factory<_i9.SoutheastAsiaWidget>(() => _i9.SoutheastAsiaWidget());
      },
    );
  }

// initializes the registration of EastAsia-scope dependencies inside of GetIt
  _i1.GetIt initEastAsiaScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'EastAsia',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.factory<_i9.EastAsiaWidget>(() => _i9.EastAsiaWidget());
      },
    );
  }
}

class _$ThirdPartyModule extends _i10.ThirdPartyModule {}
