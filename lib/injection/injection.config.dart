// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../services/cache_service.dart' as _i3;
import '../services/service.dart' as _i4;

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
    gh.lazySingleton<_i3.CacheService>(() => _i3.CacheService());
    gh.factory<_i4.Service>(
      () => _i4.SoutheastAsia(),
      registerFor: {
        _vietnam,
        _malaysia,
        _indonesia,
      },
    );
    gh.factory<_i4.Service>(
      () => _i4.EastAsia(),
      registerFor: {
        _china,
        _japan,
      },
    );
    return this;
  }
}
