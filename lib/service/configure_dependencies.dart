import 'dart:async';

import 'package:injectable/injectable.dart';

import 'di_instance.dart';

@InjectableInit()
FutureOr<void> configureDependencies() => getIt.init();
