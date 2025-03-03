//
//  Generated code. Do not modify.
//  source: count.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'count.pb.dart' as $0;

export 'count.pb.dart';

@$pb.GrpcServiceName('count.CountService')
class CountServiceClient extends $grpc.Client {
  static final _$increment = $grpc.ClientMethod<$0.CountRequest, $0.CountResponse>(
      '/count.CountService/Increment',
      ($0.CountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CountResponse.fromBuffer(value));

  CountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CountResponse> increment($0.CountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$increment, request, options: options);
  }
}

@$pb.GrpcServiceName('count.CountService')
abstract class CountServiceBase extends $grpc.Service {
  $core.String get $name => 'count.CountService';

  CountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CountRequest, $0.CountResponse>(
        'Increment',
        increment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CountRequest.fromBuffer(value),
        ($0.CountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CountResponse> increment_Pre($grpc.ServiceCall call, $async.Future<$0.CountRequest> request) async {
    return increment(call, await request);
  }

  $async.Future<$0.CountResponse> increment($grpc.ServiceCall call, $0.CountRequest request);
}
