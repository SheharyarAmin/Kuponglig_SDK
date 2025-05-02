//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationsApi {
  NotificationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Notification Endpoint
  ///
  /// Delete a notification and all its user instances
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to delete
  Future<Response> deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDeleteWithHttpInfo(String notificationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/admin/notifications/{notification_id}'
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

  /// Delete Notification Endpoint
  ///
  /// Delete a notification and all its user instances
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to delete
  Future<SuccessResponse?> deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete(String notificationId,) async {
    final response = await deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDeleteWithHttpInfo(notificationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessResponse',) as SuccessResponse;
    
    }
    return null;
  }

  /// Delete User Fcm Token
  ///
  /// Delete a specific FCM token for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   FCM token to delete
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<Response> deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDeleteWithHttpInfo(String token, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/user/fcm-token/{token}/{user_id}'
      .replaceAll('{token}', token)
      .replaceAll('{user_id}', userId);

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

  /// Delete User Fcm Token
  ///
  /// Delete a specific FCM token for a user
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   FCM token to delete
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<SuccessResponse?> deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete(String token, String userId,) async {
    final response = await deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDeleteWithHttpInfo(token, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessResponse',) as SuccessResponse;
    
    }
    return null;
  }

  /// Delete Vendor Fcm Token
  ///
  /// Delete a specific FCM token for a vendor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   FCM token to delete
  ///
  /// * [String] vendorId (required):
  ///   Vendor ID
  Future<Response> deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDeleteWithHttpInfo(String token, String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/vendor/fcm-token/{token}/{vendor_id}'
      .replaceAll('{token}', token)
      .replaceAll('{vendor_id}', vendorId);

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

  /// Delete Vendor Fcm Token
  ///
  /// Delete a specific FCM token for a vendor
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   FCM token to delete
  ///
  /// * [String] vendorId (required):
  ///   Vendor ID
  Future<SuccessResponse?> deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete(String token, String vendorId,) async {
    final response = await deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDeleteWithHttpInfo(token, vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessResponse',) as SuccessResponse;
    
    }
    return null;
  }

  /// Get Notification Details
  ///
  /// Get details for a specific notification
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to retrieve
  Future<Response> getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGetWithHttpInfo(String notificationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/admin/notifications/{notification_id}'
      .replaceAll('{notification_id}', notificationId);

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

  /// Get Notification Details
  ///
  /// Get details for a specific notification
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to retrieve
  Future<NotificationDB?> getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet(String notificationId,) async {
    final response = await getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGetWithHttpInfo(notificationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationDB',) as NotificationDB;
    
    }
    return null;
  }

  /// Get User Notification List
  ///
  /// Get notifications for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> getUserNotificationListApiV1NotificationsUserNotificationsUserIdGetWithHttpInfo(String userId, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/user/notifications/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Get User Notification List
  ///
  /// Get notifications for a user
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   User ID
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<List<UserNotification>?> getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet(String userId, { int? limit, int? offset, }) async {
    final response = await getUserNotificationListApiV1NotificationsUserNotificationsUserIdGetWithHttpInfo(userId,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserNotification>') as List)
        .cast<UserNotification>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Vendor Notification List
  ///
  /// Get notifications for a vendor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///   Vendor ID
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGetWithHttpInfo(String vendorId, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/vendor/notifications/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

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

  /// Get Vendor Notification List
  ///
  /// Get notifications for a vendor
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///   Vendor ID
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<List<UserNotification>?> getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet(String vendorId, { int? limit, int? offset, }) async {
    final response = await getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGetWithHttpInfo(vendorId,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserNotification>') as List)
        .cast<UserNotification>()
        .toList(growable: false);

    }
    return null;
  }

  /// Mark User Notification Read
  ///
  /// Mark a notification as read for a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to mark as read
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<Response> markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPutWithHttpInfo(String notificationId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/user/notifications/{notification_id}/read/{user_id}'
      .replaceAll('{notification_id}', notificationId)
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Mark User Notification Read
  ///
  /// Mark a notification as read for a user
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to mark as read
  ///
  /// * [String] userId (required):
  ///   User ID
  Future<SuccessResponse?> markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut(String notificationId, String userId,) async {
    final response = await markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPutWithHttpInfo(notificationId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessResponse',) as SuccessResponse;
    
    }
    return null;
  }

  /// Mark Vendor Notification Read
  ///
  /// Mark a notification as read for a vendor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to mark as read
  ///
  /// * [String] vendorId (required):
  ///   Vendor ID
  Future<Response> markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPutWithHttpInfo(String notificationId, String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/vendor/notifications/{notification_id}/read/{vendor_id}'
      .replaceAll('{notification_id}', notificationId)
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Mark Vendor Notification Read
  ///
  /// Mark a notification as read for a vendor
  ///
  /// Parameters:
  ///
  /// * [String] notificationId (required):
  ///   Notification ID to mark as read
  ///
  /// * [String] vendorId (required):
  ///   Vendor ID
  Future<SuccessResponse?> markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut(String notificationId, String vendorId,) async {
    final response = await markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPutWithHttpInfo(notificationId, vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessResponse',) as SuccessResponse;
    
    }
    return null;
  }

  /// Register User Fcm Token
  ///
  /// Register or update FCM token for a user  The user_id must be provided in the token_data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FCMTokenCreate] fCMTokenCreate (required):
  Future<Response> registerUserFcmTokenApiV1NotificationsUserFcmTokenPostWithHttpInfo(FCMTokenCreate fCMTokenCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/user/fcm-token';

    // ignore: prefer_final_locals
    Object? postBody = fCMTokenCreate;

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

  /// Register User Fcm Token
  ///
  /// Register or update FCM token for a user  The user_id must be provided in the token_data
  ///
  /// Parameters:
  ///
  /// * [FCMTokenCreate] fCMTokenCreate (required):
  Future<TokenRegistrationResponse?> registerUserFcmTokenApiV1NotificationsUserFcmTokenPost(FCMTokenCreate fCMTokenCreate,) async {
    final response = await registerUserFcmTokenApiV1NotificationsUserFcmTokenPostWithHttpInfo(fCMTokenCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenRegistrationResponse',) as TokenRegistrationResponse;
    
    }
    return null;
  }

  /// Register Vendor Fcm Token
  ///
  /// Register or update FCM token for a vendor  The user_id (vendor ID) must be provided in the token_data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FCMTokenCreate] fCMTokenCreate (required):
  Future<Response> registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPostWithHttpInfo(FCMTokenCreate fCMTokenCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/vendor/fcm-token';

    // ignore: prefer_final_locals
    Object? postBody = fCMTokenCreate;

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

  /// Register Vendor Fcm Token
  ///
  /// Register or update FCM token for a vendor  The user_id (vendor ID) must be provided in the token_data
  ///
  /// Parameters:
  ///
  /// * [FCMTokenCreate] fCMTokenCreate (required):
  Future<TokenRegistrationResponse?> registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost(FCMTokenCreate fCMTokenCreate,) async {
    final response = await registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPostWithHttpInfo(fCMTokenCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenRegistrationResponse',) as TokenRegistrationResponse;
    
    }
    return null;
  }

  /// Send Notification
  ///
  /// Send a notification to specified targets This endpoint allows sending notifications to specific users or vendors, or broadcasting to all users or vendors
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NotificationCreate] notificationCreate (required):
  Future<Response> sendNotificationApiV1NotificationsAdminNotificationsPostWithHttpInfo(NotificationCreate notificationCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/notifications/admin/notifications';

    // ignore: prefer_final_locals
    Object? postBody = notificationCreate;

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

  /// Send Notification
  ///
  /// Send a notification to specified targets This endpoint allows sending notifications to specific users or vendors, or broadcasting to all users or vendors
  ///
  /// Parameters:
  ///
  /// * [NotificationCreate] notificationCreate (required):
  Future<NotificationSendResponse?> sendNotificationApiV1NotificationsAdminNotificationsPost(NotificationCreate notificationCreate,) async {
    final response = await sendNotificationApiV1NotificationsAdminNotificationsPostWithHttpInfo(notificationCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationSendResponse',) as NotificationSendResponse;
    
    }
    return null;
  }
}
