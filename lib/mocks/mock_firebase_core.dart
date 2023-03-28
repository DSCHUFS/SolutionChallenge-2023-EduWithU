import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirebaseCore extends Mock
    with
    // ignore: prefer_mixin, plugin_platform_interface needs to migrate to use `mixin`
        MockPlatformInterfaceMixin
    implements
        FirebasePlatform {
  @override
  FirebaseAppPlatform app([String name = defaultFirebaseAppName]) {
    return super.noSuchMethod(
      Invocation.method(#app, [name]),
      returnValue: FakeFirebaseAppPlatform(),
      returnValueForMissingStub: FakeFirebaseAppPlatform(),
    );
  }

  @override
  Future<FirebaseAppPlatform> initializeApp({
    String? name,
    FirebaseOptions? options,
  }) {
    return super.noSuchMethod(
      Invocation.method(
        #initializeApp,
        const [],
        {
          #name: name,
          #options: options,
        },
      ),
      returnValue: Future.value(FakeFirebaseAppPlatform()),
      returnValueForMissingStub: Future.value(FakeFirebaseAppPlatform()),
    );
  }

  @override
  List<FirebaseAppPlatform> get apps {
    return super.noSuchMethod(
      Invocation.getter(#apps),
      returnValue: <FirebaseAppPlatform>[],
      returnValueForMissingStub: <FirebaseAppPlatform>[],
    );
  }
}

class FakeFirebaseAppPlatform extends Fake implements FirebaseAppPlatform {}