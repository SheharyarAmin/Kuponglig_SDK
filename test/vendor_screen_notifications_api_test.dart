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


/// tests for VendorScreenNotificationsApi
void main() {
  // final instance = VendorScreenNotificationsApi();

  group('tests for VendorScreenNotificationsApi', () {
    // Add Custom Notification
    //
    // Add a custom notification to a vendor's screen. Useful for testing or manual notifications from admin panel.
    //
    //Future<Object> addCustomNotificationApiV1VendorNotificationsAddPost(VendorScreen screen, NotificationRequest notificationRequest) async
    test('test addCustomNotificationApiV1VendorNotificationsAddPost', () async {
      // TODO
    });

    // Broadcast Notification
    //
    // Broadcast a notification to multiple vendors. Useful for system-wide announcements, maintenance notifications, etc.
    //
    //Future<Object> broadcastNotificationApiV1VendorNotificationsBroadcastPost(AppApiApiV1EndpointsVendorNotificationsBroadcastNotificationRequest appApiApiV1EndpointsVendorNotificationsBroadcastNotificationRequest) async
    test('test broadcastNotificationApiV1VendorNotificationsBroadcastPost', () async {
      // TODO
    });

    // Clear Screen Notifications
    //
    // Clear all notifications from a specific screen.
    //
    //Future<Object> clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete(VendorScreen screen) async
    test('test clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete', () async {
      // TODO
    });

    // Dismiss Notification
    //
    // Dismiss a specific notification from a screen. Allows vendors to remove notifications they've acted upon.
    //
    //Future<Object> dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete(VendorScreen screen, String notificationId) async
    test('test dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete', () async {
      // TODO
    });

    // Get All Notifications
    //
    // Get all notifications for a vendor across all screens. Useful for notification badges and overview.
    //
    //Future<AllNotificationsResponse> getAllNotificationsApiV1VendorNotificationsAllGet() async
    test('test getAllNotificationsApiV1VendorNotificationsAllGet', () async {
      // TODO
    });

    // Get Screen Notifications
    //
    // Get notifications for a specific vendor screen. Each Flutter screen can call this to get its relevant notifications.
    //
    //Future<AppApiApiV1EndpointsVendorNotificationsScreenNotificationsResponse> getScreenNotificationsApiV1VendorNotificationsScreensScreenGet(VendorScreen screen) async
    test('test getScreenNotificationsApiV1VendorNotificationsScreensScreenGet', () async {
      // TODO
    });

    // Refresh Notifications
    //
    // Force refresh of all notifications for a vendor. Useful when vendor wants to manually refresh their notification state.
    //
    //Future<Object> refreshNotificationsApiV1VendorNotificationsRefreshPost() async
    test('test refreshNotificationsApiV1VendorNotificationsRefreshPost', () async {
      // TODO
    });

  });
}
