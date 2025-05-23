// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Activity _$ActivityFromJson(Map<String, dynamic> json) => _Activity(
  key: json['key'] as String,
  activity: json['activity'] as String,
  type: json['type'] as String,
  participants: (json['participants'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$ActivityToJson(_Activity instance) => <String, dynamic>{
  'key': instance.key,
  'activity': instance.activity,
  'type': instance.type,
  'participants': instance.participants,
  'price': instance.price,
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(activity)
const activityProvider = ActivityProvider._();

final class ActivityProvider
    extends $FunctionalProvider<AsyncValue<Activity>, FutureOr<Activity>>
    with $FutureModifier<Activity>, $FutureProvider<Activity> {
  const ActivityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activityHash();

  @$internal
  @override
  $FutureProviderElement<Activity> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Activity> create(Ref ref) {
    return activity(ref);
  }
}

String _$activityHash() => r'c90b5d6502e5e4c31a2fa8c974683171cad8f38f';

@ProviderFor(Hello)
const helloProvider = HelloFamily._();

final class HelloProvider extends $AsyncNotifierProvider<Hello, String> {
  const HelloProvider._({
    required HelloFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'helloProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$helloHash();

  @override
  String toString() {
    return r'helloProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Hello create() => Hello();

  @$internal
  @override
  $AsyncNotifierProviderElement<Hello, String> $createElement(
    $ProviderPointer pointer,
  ) => $AsyncNotifierProviderElement(pointer);

  @override
  bool operator ==(Object other) {
    return other is HelloProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$helloHash() => r'd92da58553b9b4836bf453072ca57a06f7bd5f99';

final class HelloFamily extends $Family
    with
        $ClassFamilyOverride<
          Hello,
          AsyncValue<String>,
          String,
          FutureOr<String>,
          String
        > {
  const HelloFamily._()
    : super(
        retry: null,
        name: r'helloProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  HelloProvider call(String hello) =>
      HelloProvider._(argument: hello, from: this);

  @override
  String toString() => r'helloProvider';
}

abstract class _$Hello extends $AsyncNotifier<String> {
  late final _$args = ref.$arg as String;
  String get hello => _$args;

  FutureOr<String> build(String hello);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
