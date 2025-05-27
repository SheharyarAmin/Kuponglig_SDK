//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserScreenNotificationsApi {
  UserScreenNotificationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Broadcast Notification
  ///
  /// Broadcast a notification to multiple users (Admin feature). Note: In production, this should have proper admin authentication.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserBroadcastNotificationRequest] userBroadcastNotificationRequest (required):
  Future<Response> broadcastNotificationApiV1UserNotificationsBroadcastPostWithHttpInfo(UserBroadcastNotificationRequest userBroadcastNotificationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/notifications/broadcast';

    // ignore: prefer_final_locals
    Object? postBody = userBroadcastNotificationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Broadcast Notification
  ///
  /// Broadcast a notification to multiple users (Admin feature). Note: In production, this should have proper admin authentication.
  ///
  /// Parameters:
  ///
  /// * [UserBroadcastNotificationRequest] userBroadcastNotificationRequest (required):
  Future<BroadcastNotificationResponse?> broadcastNotificationApiV1UserNotificationsBroadcastPost(UserBroadcastNotificationRequest userBroadcastNotificationRequest,) async {
    final response = await broadcastNotificationApiV1UserNotificationsBroadcastPostWithHttpInfo(userBroadcastNotificationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BroadcastNotificationResponse',) as BroadcastNotificationResponse;
    
    }
    return null;
  }

  /// Clear Screen Notifications
  ///
  /// Clear all notifications from a specific screen.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserScreen] screen (required):
  Future<Response> clearScreenNotificationsApiV1UserNotificationsScreensScreenDeleteWithHttpInfo(UserScreen screen,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/notifications/screens/{screen}'
      .replaceAll('{screen}', screen.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Clear Screen Notifications
  ///
  /// Clear all notifications from a specific screen.
  ///
  /// Parameters:
  ///
  /// * [UserScreen] screen (required):
  Future<NotificationActionResponse?> clearScreenNotificationsApiV1UserNotificationsScreensScreenDelete(UserScreen screen,) async {
    final response = await clearScreenNotificationsApiV1UserNotificationsScreensScreenDeleteWithHttpInfo(screen,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationActionResponse',) as NotificationActionResponse;
    
    }
    return null;
  }

  /// Dismiss Notification
  ///
  /// Dismiss a specific notification.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserScreen] screen (required):
  ///
  /// * [String] notificationId (required):
  Future<Response> dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDeleteWithHttpInfo(UserScreen screen, String notificationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/notifications/screens/{screen}/{notification_id}'
      .replaceAll('{screen}', screen.toString())
      .replaceAll('{notification_id}', notificationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Dismiss Notification
  ///
  /// Dismiss a specific notification.
  ///
  /// Parameters:
  ///
  /// * [UserScreen] screen (required):
  ///
  /// * [String] notificationId (required):
  Future<NotificationActionResponse?> dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDelete(UserScreen screen, String notificationId,) async {
    final response = await dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDeleteWithHttpInfo(screen, notificationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationActionResponse',) as NotificationActionResponse;
    
    }
    return null;
  }

  /// Get Screen Notifications
  ///
  /// Get notifications for a specific user screen.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserScreen] screen (required):
  Future<Response> getScreenNotificationsApiV1UserNotificationsScreensScreenGetWithHttpInfo(UserScreen screen,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/notifications/screens/{screen}'
      .replaceAll('{screen}', screen.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Screen Notifications
  ///
  /// Get notifications for a specific user screen.
  ///
  /// Parameters:
  ///
  /// * [UserScreen] screen (required):
  Future<ScreenNotificationsResponse?> getScreenNotificationsApiV1UserNotificationsScreensScreenGet(UserScreen screen,) async {
    final response = await getScreenNotificationsApiV1UserNotificationsScreensScreenGetWithHttpInfo(screen,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScreenNotificationsResponse',) as ScreenNotificationsResponse;
    
    }
    return null;
  }
}
