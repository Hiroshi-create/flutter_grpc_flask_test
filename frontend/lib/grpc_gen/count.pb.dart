//
//  Generated code. Do not modify.
//  source: count.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// リクエスト型
class CountRequest extends $pb.GeneratedMessage {
  factory CountRequest() => create();
  CountRequest._() : super();
  factory CountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'count'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountRequest clone() => CountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountRequest copyWith(void Function(CountRequest) updates) => super.copyWith((message) => updates(message as CountRequest)) as CountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CountRequest create() => CountRequest._();
  CountRequest createEmptyInstance() => create();
  static $pb.PbList<CountRequest> createRepeated() => $pb.PbList<CountRequest>();
  @$core.pragma('dart2js:noInline')
  static CountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountRequest>(create);
  static CountRequest? _defaultInstance;
}

/// レスポンス型
class CountResponse extends $pb.GeneratedMessage {
  factory CountResponse({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  CountResponse._() : super();
  factory CountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'count'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountResponse clone() => CountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountResponse copyWith(void Function(CountResponse) updates) => super.copyWith((message) => updates(message as CountResponse)) as CountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CountResponse create() => CountResponse._();
  CountResponse createEmptyInstance() => create();
  static $pb.PbList<CountResponse> createRepeated() => $pb.PbList<CountResponse>();
  @$core.pragma('dart2js:noInline')
  static CountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountResponse>(create);
  static CountResponse? _defaultInstance;

  /// カウントの値（int型）
  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
