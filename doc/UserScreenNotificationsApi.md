# openapi.api.UserScreenNotificationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcastNotificationApiV1UserNotificationsBroadcastPost**](UserScreenNotificationsApi.md#broadcastnotificationapiv1usernotificationsbroadcastpost) | **POST** /api/v1/user/notifications/broadcast | Broadcast Notification
[**clearScreenNotificationsApiV1UserNotificationsScreensScreenDelete**](UserScreenNotificationsApi.md#clearscreennotificationsapiv1usernotificationsscreensscreendelete) | **DELETE** /api/v1/user/notifications/screens/{screen} | Clear Screen Notifications
[**dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDelete**](UserScreenNotificationsApi.md#dismissnotificationapiv1usernotificationsscreensscreennotificationiddelete) | **DELETE** /api/v1/user/notifications/screens/{screen}/{notification_id} | Dismiss Notification
[**getScreenNotificationsApiV1UserNotificationsScreensScreenGet**](UserScreenNotificationsApi.md#getscreennotificationsapiv1usernotificationsscreensscreenget) | **GET** /api/v1/user/notifications/screens/{screen} | Get Screen Notifications


# **broadcastNotificationApiV1UserNotificationsBroadcastPost**
> BroadcastNotificationResponse broadcastNotificationApiV1UserNotificationsBroadcastPost(userBroadcastNotificationRequest)

Broadcast Notification

Broadcast a notification to multiple users (Admin feature). Note: In production, this should have proper admin authentication.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UserScreenNotificationsApi();
final userBroadcastNotificationRequest = UserBroadcastNotificationRequest(); // UserBroadcastNotificationRequest | 

try {
    final result = api_instance.broadcastNotificationApiV1UserNotificationsBroadcastPost(userBroadcastNotificationRequest);
    print(result);
} catch (e) {
    print('Exception when calling UserScreenNotificationsApi->broadcastNotificationApiV1UserNotificationsBroadcastPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userBroadcastNotificationRequest** | [**UserBroadcastNotificationRequest**](UserBroadcastNotificationRequest.md)|  | 

### Return type

[**BroadcastNotificationResponse**](BroadcastNotificationResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearScreenNotificationsApiV1UserNotificationsScreensScreenDelete**
> NotificationActionResponse clearScreenNotificationsApiV1UserNotificationsScreensScreenDelete(screen)

Clear Screen Notifications

Clear all notifications from a specific screen.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UserScreenNotificationsApi();
final screen = ; // UserScreen | 

try {
    final result = api_instance.clearScreenNotificationsApiV1UserNotificationsScreensScreenDelete(screen);
    print(result);
} catch (e) {
    print('Exception when calling UserScreenNotificationsApi->clearScreenNotificationsApiV1UserNotificationsScreensScreenDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**UserScreen**](.md)|  | 

### Return type

[**NotificationActionResponse**](NotificationActionResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDelete**
> NotificationActionResponse dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDelete(screen, notificationId)

Dismiss Notification

Dismiss a specific notification.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UserScreenNotificationsApi();
final screen = ; // UserScreen | 
final notificationId = notificationId_example; // String | 

try {
    final result = api_instance.dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDelete(screen, notificationId);
    print(result);
} catch (e) {
    print('Exception when calling UserScreenNotificationsApi->dismissNotificationApiV1UserNotificationsScreensScreenNotificationIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**UserScreen**](.md)|  | 
 **notificationId** | **String**|  | 

### Return type

[**NotificationActionResponse**](NotificationActionResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScreenNotificationsApiV1UserNotificationsScreensScreenGet**
> ScreenNotificationsResponse getScreenNotificationsApiV1UserNotificationsScreensScreenGet(screen)

Get Screen Notifications

Get notifications for a specific user screen.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UserScreenNotificationsApi();
final screen = ; // UserScreen | 

try {
    final result = api_instance.getScreenNotificationsApiV1UserNotificationsScreensScreenGet(screen);
    print(result);
} catch (e) {
    print('Exception when calling UserScreenNotificationsApi->getScreenNotificationsApiV1UserNotificationsScreensScreenGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **screen** | [**UserScreen**](.md)|  | 

### Return type

[**ScreenNotificationsResponse**](ScreenNotificationsResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

