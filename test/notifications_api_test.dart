//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for NotificationsApi
void main() {
  // final instance = NotificationsApi();

  group('tests for NotificationsApi', () {
    // Delete Notification Endpoint
    //
    // Delete a notification and all its user instances
    //
    //Future<SuccessResponse> deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete(String notificationId) async
    test('test deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete', () async {
      // TODO
    });

    // Delete User Fcm Token
    //
    // Delete a specific FCM token for a user
    //
    //Future<SuccessResponse> deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete(String token, String userId) async
    test('test deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete', () async {
      // TODO
    });

    // Delete Vendor Fcm Token
    //
    // Delete a specific FCM token for a vendor
    //
    //Future<SuccessResponse> deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete(String token, String vendorId) async
    test('test deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete', () async {
      // TODO
    });

    // Get Notification Details
    //
    // Get details for a specific notification
    //
    //Future<NotificationDB> getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet(String notificationId) async
    test('test getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet', () async {
      // TODO
    });

    // Get User Notification List
    //
    // Get notifications for a user
    //
    //Future<List<UserNotification>> getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet(String userId, { int limit, int offset }) async
    test('test getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet', () async {
      // TODO
    });

    // Get Vendor Notification List
    //
    // Get notifications for a vendor
    //
    //Future<List<UserNotification>> getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet(String vendorId, { int limit, int offset }) async
    test('test getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet', () async {
      // TODO
    });

    // Mark User Notification Read
    //
    // Mark a notification as read for a user
    //
    //Future<SuccessResponse> markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut(String notificationId, String userId) async
    test('test markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut', () async {
      // TODO
    });

    // Mark Vendor Notification Read
    //
    // Mark a notification as read for a vendor
    //
    //Future<SuccessResponse> markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut(String notificationId, String vendorId) async
    test('test markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut', () async {
      // TODO
    });

    // Register User Fcm Token
    //
    // Register or update FCM token for a user  The user_id must be provided in the token_data
    //
    //Future<TokenRegistrationResponse> registerUserFcmTokenApiV1NotificationsUserFcmTokenPost(FCMTokenCreate fCMTokenCreate) async
    test('test registerUserFcmTokenApiV1NotificationsUserFcmTokenPost', () async {
      // TODO
    });

    // Register Vendor Fcm Token
    //
    // Register or update FCM token for a vendor  The user_id (vendor ID) must be provided in the token_data
    //
    //Future<TokenRegistrationResponse> registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost(FCMTokenCreate fCMTokenCreate) async
    test('test registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost', () async {
      // TODO
    });

    // Send Notification
    //
    // Send a notification to specified targets This endpoint allows sending notifications to specific users or vendors, or broadcasting to all users or vendors
    //
    //Future<NotificationSendResponse> sendNotificationApiV1NotificationsAdminNotificationsPost(NotificationCreate notificationCreate) async
    test('test sendNotificationApiV1NotificationsAdminNotificationsPost', () async {
      // TODO
    });

  });
}
