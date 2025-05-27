//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost', this.authentication,});
  String? _accessToken;
  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  void setAccessToken(String accessToken) {
    _accessToken = accessToken;

    if (_accessToken != null) {
      _defaultHeaderMap['Authorization'] = 'Bearer $_accessToken';
    }
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    if (_accessToken != null) {
      headerParams['Authorization'] = 'Bearer $_accessToken';
    }

    // Add default headers
    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    await authentication?.applyToParams(queryParams, headerParams);


    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ActivityMetrics':
          return ActivityMetrics.fromJson(value);
        case 'AnalyticsEvent':
          return AnalyticsEvent.fromJson(value);
        case 'AnalyticsEventBatch':
          return AnalyticsEventBatch.fromJson(value);
        case 'AnalyticsEventType':
          return AnalyticsEventTypeTypeTransformer().decode(value);
        case 'AuthenticationToken':
          return AuthenticationToken.fromJson(value);
        case 'BroadcastNotificationResponse':
          return BroadcastNotificationResponse.fromJson(value);
        case 'ContactFormDetail':
          return ContactFormDetail.fromJson(value);
        case 'ContactFormList':
          return ContactFormList.fromJson(value);
        case 'ContactFormListItem':
          return ContactFormListItem.fromJson(value);
        case 'ContactFormResponse':
          return ContactFormResponse.fromJson(value);
        case 'ContactFormStatus':
          return ContactFormStatusTypeTransformer().decode(value);
        case 'ContactFormSubmission':
          return ContactFormSubmission.fromJson(value);
        case 'ContactFormType':
          return ContactFormTypeTypeTransformer().decode(value);
        case 'CoreStats':
          return CoreStats.fromJson(value);
        case 'CouponDetails':
          return CouponDetails.fromJson(value);
        case 'CouponModel':
          return CouponModel.fromJson(value);
        case 'CouponPerformance':
          return CouponPerformance.fromJson(value);
        case 'CouponRedemptionResponse':
          return CouponRedemptionResponse.fromJson(value);
        case 'CouponRedemptionStatus':
          return CouponRedemptionStatusTypeTransformer().decode(value);
        case 'CouponStatus':
          return CouponStatusTypeTransformer().decode(value);
        case 'CouponSubscriptionStatus':
          return CouponSubscriptionStatusTypeTransformer().decode(value);
        case 'CouponTargetType':
          return CouponTargetTypeTypeTransformer().decode(value);
        case 'CreateUserSubscriptionSession':
          return CreateUserSubscriptionSession.fromJson(value);
        case 'DashboardRequest':
          return DashboardRequest.fromJson(value);
        case 'DashboardResponse':
          return DashboardResponse.fromJson(value);
        case 'DeletionRequestModel':
          return DeletionRequestModel.fromJson(value);
        case 'DeletionRequestStatus':
          return DeletionRequestStatusTypeTransformer().decode(value);
        case 'DeletionRequestType':
          return DeletionRequestTypeTypeTransformer().decode(value);
        case 'DeviceType':
          return DeviceTypeTypeTransformer().decode(value);
        case 'DynamicSubscriptionRequest':
          return DynamicSubscriptionRequest.fromJson(value);
        case 'DynamicSubscriptionResponse':
          return DynamicSubscriptionResponse.fromJson(value);
        case 'EntityType':
          return EntityTypeTypeTransformer().decode(value);
        case 'FCMTokenCreate':
          return FCMTokenCreate.fromJson(value);
        case 'Gender':
          return GenderTypeTransformer().decode(value);
        case 'GeoPoint':
          return GeoPoint.fromJson(value);
        case 'HTTPValidationError':
          return HTTPValidationError.fromJson(value);
        case 'HourlyActivityData':
          return HourlyActivityData.fromJson(value);
        case 'HourlyMetricData':
          return HourlyMetricData.fromJson(value);
        case 'IDResponse':
          return IDResponse.fromJson(value);
        case 'InactiveReason':
          return InactiveReasonTypeTransformer().decode(value);
        case 'Interests':
          return InterestsTypeTransformer().decode(value);
        case 'MetricSortBy':
          return MetricSortByTypeTransformer().decode(value);
        case 'NotificationActionResponse':
          return NotificationActionResponse.fromJson(value);
        case 'NotificationBase':
          return NotificationBase.fromJson(value);
        case 'NotificationCategory':
          return NotificationCategoryTypeTransformer().decode(value);
        case 'NotificationCreate':
          return NotificationCreate.fromJson(value);
        case 'NotificationDB':
          return NotificationDB.fromJson(value);
        case 'NotificationRefreshResponse':
          return NotificationRefreshResponse.fromJson(value);
        case 'NotificationRequest':
          return NotificationRequest.fromJson(value);
        case 'NotificationSendResponse':
          return NotificationSendResponse.fromJson(value);
        case 'NotificationSeverity':
          return NotificationSeverityTypeTransformer().decode(value);
        case 'NotificationStatus':
          return NotificationStatusTypeTransformer().decode(value);
        case 'NotificationTarget':
          return NotificationTargetTypeTransformer().decode(value);
        case 'NotificationType':
          return NotificationTypeTypeTransformer().decode(value);
        case 'PerformanceDetails':
          return PerformanceDetails.fromJson(value);
        case 'Platform':
          return PlatformTypeTransformer().decode(value);
        case 'RatingValue':
          return RatingValueTypeTransformer().decode(value);
        case 'RewardType':
          return RewardTypeTypeTransformer().decode(value);
        case 'SaveCouponRequest':
          return SaveCouponRequest.fromJson(value);
        case 'ScreenNotificationItem':
          return ScreenNotificationItem.fromJson(value);
        case 'ScreenNotificationsResponse':
          return ScreenNotificationsResponse.fromJson(value);
        case 'SessionResponse':
          return SessionResponse.fromJson(value);
        case 'SpinWheelResponse':
          return SpinWheelResponse.fromJson(value);
        case 'SpinningWheelReward':
          return SpinningWheelReward.fromJson(value);
        case 'StoreDetails':
          return StoreDetails.fromJson(value);
        case 'StoreModel':
          return StoreModel.fromJson(value);
        case 'StoreModelBase':
          return StoreModelBase.fromJson(value);
        case 'StoreReviewCreate':
          return StoreReviewCreate.fromJson(value);
        case 'StoreReviewModel':
          return StoreReviewModel.fromJson(value);
        case 'StoreReviewResponse':
          return StoreReviewResponse.fromJson(value);
        case 'StoreReviewStats':
          return StoreReviewStats.fromJson(value);
        case 'StoreStatus':
          return StoreStatusTypeTransformer().decode(value);
        case 'StoreTypes':
          return StoreTypesTypeTransformer().decode(value);
        case 'SubscriptionStatus':
          return SubscriptionStatusTypeTransformer().decode(value);
        case 'SubscriptionStatusResponse':
          return SubscriptionStatusResponse.fromJson(value);
        case 'SuccessResponse':
          return SuccessResponse.fromJson(value);
        case 'TimeFrame':
          return TimeFrameTypeTransformer().decode(value);
        case 'Token':
          return Token.fromJson(value);
        case 'TokenRegistrationResponse':
          return TokenRegistrationResponse.fromJson(value);
        case 'UnlockStatus':
          return UnlockStatusTypeTransformer().decode(value);
        case 'UnlockedCouponModel':
          return UnlockedCouponModel.fromJson(value);
        case 'UnlockedCouponResponse':
          return UnlockedCouponResponse.fromJson(value);
        case 'UserBroadcastNotificationRequest':
          return UserBroadcastNotificationRequest.fromJson(value);
        case 'UserModel':
          return UserModel.fromJson(value);
        case 'UserModelFromClient':
          return UserModelFromClient.fromJson(value);
        case 'UserNotification':
          return UserNotification.fromJson(value);
        case 'UserPointsTransactionModel':
          return UserPointsTransactionModel.fromJson(value);
        case 'UserRedeemedCouponResponse':
          return UserRedeemedCouponResponse.fromJson(value);
        case 'UserRedeemedCouponsListResponse':
          return UserRedeemedCouponsListResponse.fromJson(value);
        case 'UserScreen':
          return UserScreenTypeTransformer().decode(value);
        case 'UserStatus':
          return UserStatusTypeTransformer().decode(value);
        case 'UserSubscriptionModel':
          return UserSubscriptionModel.fromJson(value);
        case 'UserType':
          return UserTypeTypeTransformer().decode(value);
        case 'ValidationError':
          return ValidationError.fromJson(value);
        case 'ValidationErrorLocInner':
          return ValidationErrorLocInner.fromJson(value);
        case 'VendorBroadcastNotificationRequest':
          return VendorBroadcastNotificationRequest.fromJson(value);
        case 'VendorModel':
          return VendorModel.fromJson(value);
        case 'VendorScreen':
          return VendorScreenTypeTransformer().decode(value);
        case 'VendorStatus':
          return VendorStatusTypeTransformer().decode(value);
        case 'WonCouponModel':
          return WonCouponModel.fromJson(value);
        case 'WonCouponStatus':
          return WonCouponStatusTypeTransformer().decode(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
