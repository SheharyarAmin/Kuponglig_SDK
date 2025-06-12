//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VendorScreenNotificationsApi {
  VendorScreenNotificationsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Custom Notification
  ///
  /// Add a custom notification to a vendor's screen. Useful for testing or manual notifications from admin panel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VendorScreen] screen (required):
  ///
  /// * [NotificationRequest] notificationRequest (required):
  Future<Response>
      addCustomNotificationApiV1VendorNotificationsAddPostWithHttpInfo(
    VendorScreen screen,
    NotificationRequest notificationRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/notifications/add';

    // ignore: prefer_final_locals
    Object? postBody = notificationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'screen', screen));

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

  /// Add Custom Notification
  ///
  /// Add a custom notification to a vendor's screen. Useful for testing or manual notifications from admin panel.
  ///
  /// Parameters:
  ///
  /// * [VendorScreen] screen (required):
  ///
  /// * [NotificationRequest] notificationRequest (required):
  Future<NotificationActionResponse?>
      addCustomNotificationApiV1VendorNotificationsAddPost(
    VendorScreen screen,
    NotificationRequest notificationRequest,
  ) async {
    final response =
        await addCustomNotificationApiV1VendorNotificationsAddPostWithHttpInfo(
      screen,
      notificationRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'NotificationActionResponse',
      ) as NotificationActionResponse;
    }
    return null;
  }

  /// Broadcast Notification
  ///
  /// Broadcast a notification to multiple vendors. Useful for system-wide announcements, maintenance notifications, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VendorBroadcastNotificationRequest] vendorBroadcastNotificationRequest (required):
  Future<Response>
      broadcastNotificationApiV1VendorNotificationsBroadcastPostWithHttpInfo(
    VendorBroadcastNotificationRequest vendorBroadcastNotificationRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/notifications/broadcast';

    // ignore: prefer_final_locals
    Object? postBody = vendorBroadcastNotificationRequest;

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
  /// Broadcast a notification to multiple vendors. Useful for system-wide announcements, maintenance notifications, etc.
  ///
  /// Parameters:
  ///
  /// * [VendorBroadcastNotificationRequest] vendorBroadcastNotificationRequest (required):
  Future<BroadcastNotificationResponse?>
      broadcastNotificationApiV1VendorNotificationsBroadcastPost(
    VendorBroadcastNotificationRequest vendorBroadcastNotificationRequest,
  ) async {
    final response =
        await broadcastNotificationApiV1VendorNotificationsBroadcastPostWithHttpInfo(
      vendorBroadcastNotificationRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'BroadcastNotificationResponse',
      ) as BroadcastNotificationResponse;
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
  /// * [VendorScreen] screen (required):
  Future<Response>
      clearScreenNotificationsApiV1VendorNotificationsScreensScreenDeleteWithHttpInfo(
    VendorScreen screen,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/notifications/screens/{screen}'
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
  /// * [VendorScreen] screen (required):
  Future<NotificationActionResponse?>
      clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete(
    VendorScreen screen,
  ) async {
    final response =
        await clearScreenNotificationsApiV1VendorNotificationsScreensScreenDeleteWithHttpInfo(
      screen,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'NotificationActionResponse',
      ) as NotificationActionResponse;
    }
    return null;
  }

  /// Dismiss Notification
  ///
  /// Dismiss a specific notification from a screen. Allows vendors to remove notifications they've acted upon.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VendorScreen] screen (required):
  ///
  /// * [String] notificationId (required):
  Future<Response>
      dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDeleteWithHttpInfo(
    VendorScreen screen,
    String notificationId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/api/v1/vendor/notifications/screens/{screen}/{notification_id}'
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
  /// Dismiss a specific notification from a screen. Allows vendors to remove notifications they've acted upon.
  ///
  /// Parameters:
  ///
  /// * [VendorScreen] screen (required):
  ///
  /// * [String] notificationId (required):
  Future<NotificationActionResponse?>
      dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete(
    VendorScreen screen,
    String notificationId,
  ) async {
    final response =
        await dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDeleteWithHttpInfo(
      screen,
      notificationId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'NotificationActionResponse',
      ) as NotificationActionResponse;
    }
    return null;
  }

  /// Get Screen Notifications
  ///
  /// Get notifications for a specific vendor screen. Each Flutter screen can call this to get its relevant notifications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VendorScreen] screen (required):
  Future<Response>
      getScreenNotificationsApiV1VendorNotificationsScreensScreenGetWithHttpInfo(
    VendorScreen screen,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/notifications/screens/{screen}'
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
  /// Get notifications for a specific vendor screen. Each Flutter screen can call this to get its relevant notifications.
  ///
  /// Parameters:
  ///
  /// * [VendorScreen] screen (required):
  Future<ScreenNotificationsResponse?>
      getScreenNotificationsApiV1VendorNotificationsScreensScreenGet(
    VendorScreen screen,
  ) async {
    final response =
        await getScreenNotificationsApiV1VendorNotificationsScreensScreenGetWithHttpInfo(
      screen,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ScreenNotificationsResponse',
      ) as ScreenNotificationsResponse;
    }
    return null;
  }

  /// Refresh Notifications
  ///
  /// Force refresh of all notifications for a vendor. Useful when vendor wants to manually refresh their notification state.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response>
      refreshNotificationsApiV1VendorNotificationsRefreshPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/notifications/refresh';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Refresh Notifications
  ///
  /// Force refresh of all notifications for a vendor. Useful when vendor wants to manually refresh their notification state.
  Future<NotificationRefreshResponse?>
      refreshNotificationsApiV1VendorNotificationsRefreshPost() async {
    final response =
        await refreshNotificationsApiV1VendorNotificationsRefreshPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'NotificationRefreshResponse',
      ) as NotificationRefreshResponse;
    }
    return null;
  }
}
