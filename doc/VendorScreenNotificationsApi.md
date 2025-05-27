# openapi.api.VendorScreenNotificationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomNotificationApiV1VendorNotificationsAddPost**](VendorScreenNotificationsApi.md#addcustomnotificationapiv1vendornotificationsaddpost) | **POST** /api/v1/vendor/notifications/add | Add Custom Notification
[**broadcastNotificationApiV1VendorNotificationsBroadcastPost**](VendorScreenNotificationsApi.md#broadcastnotificationapiv1vendornotificationsbroadcastpost) | **POST** /api/v1/vendor/notifications/broadcast | Broadcast Notification
[**clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete**](VendorScreenNotificationsApi.md#clearscreennotificationsapiv1vendornotificationsscreensscreendelete) | **DELETE** /api/v1/vendor/notifications/screens/{screen} | Clear Screen Notifications
[**dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete**](VendorScreenNotificationsApi.md#dismissnotificationapiv1vendornotificationsscreensscreennotificationiddelete) | **DELETE** /api/v1/vendor/notifications/screens/{screen}/{notification_id} | Dismiss Notification
[**getScreenNotificationsApiV1VendorNotificationsScreensScreenGet**](VendorScreenNotificationsApi.md#getscreennotificationsapiv1vendornotificationsscreensscreenget) | **GET** /api/v1/vendor/notifications/screens/{screen} | Get Screen Notifications
[**refreshNotificationsApiV1VendorNotificationsRefreshPost**](VendorScreenNotificationsApi.md#refreshnotificationsapiv1vendornotificationsrefreshpost) | **POST** /api/v1/vendor/notifications/refresh | Refresh Notifications


# **addCustomNotificationApiV1VendorNotificationsAddPost**
> NotificationActionResponse addCustomNotificationApiV1VendorNotificationsAddPost(screen, notificationRequest)

Add Custom Notification

Add a custom notification to a vendor's screen. Useful for testing or manual notifications from admin panel.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VendorScreenNotificationsApi();
final screen = ; // VendorScreen | 
final notificationRequest = NotificationRequest(); // NotificationRequest | 

try {
    final result = api_instance.addCustomNotificationApiV1VendorNotificationsAddPost(screen, notificationRequest);
    print(result);
} catch (e) {
    print('Exception when calling VendorScreenNotificationsApi->addCustomNotificationApiV1VendorNotificationsAddPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**VendorScreen**](.md)|  | 
 **notificationRequest** | [**NotificationRequest**](NotificationRequest.md)|  | 

### Return type

[**NotificationActionResponse**](NotificationActionResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **broadcastNotificationApiV1VendorNotificationsBroadcastPost**
> BroadcastNotificationResponse broadcastNotificationApiV1VendorNotificationsBroadcastPost(vendorBroadcastNotificationRequest)

Broadcast Notification

Broadcast a notification to multiple vendors. Useful for system-wide announcements, maintenance notifications, etc.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorScreenNotificationsApi();
final vendorBroadcastNotificationRequest = VendorBroadcastNotificationRequest(); // VendorBroadcastNotificationRequest | 

try {
    final result = api_instance.broadcastNotificationApiV1VendorNotificationsBroadcastPost(vendorBroadcastNotificationRequest);
    print(result);
} catch (e) {
    print('Exception when calling VendorScreenNotificationsApi->broadcastNotificationApiV1VendorNotificationsBroadcastPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorBroadcastNotificationRequest** | [**VendorBroadcastNotificationRequest**](VendorBroadcastNotificationRequest.md)|  | 

### Return type

[**BroadcastNotificationResponse**](BroadcastNotificationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete**
> NotificationActionResponse clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete(screen)

Clear Screen Notifications

Clear all notifications from a specific screen.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VendorScreenNotificationsApi();
final screen = ; // VendorScreen | 

try {
    final result = api_instance.clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete(screen);
    print(result);
} catch (e) {
    print('Exception when calling VendorScreenNotificationsApi->clearScreenNotificationsApiV1VendorNotificationsScreensScreenDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**VendorScreen**](.md)|  | 

### Return type

[**NotificationActionResponse**](NotificationActionResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete**
> NotificationActionResponse dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete(screen, notificationId)

Dismiss Notification

Dismiss a specific notification from a screen. Allows vendors to remove notifications they've acted upon.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VendorScreenNotificationsApi();
final screen = ; // VendorScreen | 
final notificationId = notificationId_example; // String | 

try {
    final result = api_instance.dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete(screen, notificationId);
    print(result);
} catch (e) {
    print('Exception when calling VendorScreenNotificationsApi->dismissNotificationApiV1VendorNotificationsScreensScreenNotificationIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**VendorScreen**](.md)|  | 
 **notificationId** | **String**|  | 

### Return type

[**NotificationActionResponse**](NotificationActionResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScreenNotificationsApiV1VendorNotificationsScreensScreenGet**
> ScreenNotificationsResponse getScreenNotificationsApiV1VendorNotificationsScreensScreenGet(screen)

Get Screen Notifications

Get notifications for a specific vendor screen. Each Flutter screen can call this to get its relevant notifications.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VendorScreenNotificationsApi();
final screen = ; // VendorScreen | 

try {
    final result = api_instance.getScreenNotificationsApiV1VendorNotificationsScreensScreenGet(screen);
    print(result);
} catch (e) {
    print('Exception when calling VendorScreenNotificationsApi->getScreenNotificationsApiV1VendorNotificationsScreensScreenGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**VendorScreen**](.md)|  | 

### Return type

[**ScreenNotificationsResponse**](ScreenNotificationsResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshNotificationsApiV1VendorNotificationsRefreshPost**
> NotificationRefreshResponse refreshNotificationsApiV1VendorNotificationsRefreshPost()

Refresh Notifications

Force refresh of all notifications for a vendor. Useful when vendor wants to manually refresh their notification state.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VendorScreenNotificationsApi();

try {
    final result = api_instance.refreshNotificationsApiV1VendorNotificationsRefreshPost();
    print(result);
} catch (e) {
    print('Exception when calling VendorScreenNotificationsApi->refreshNotificationsApiV1VendorNotificationsRefreshPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationRefreshResponse**](NotificationRefreshResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

