# openapi.api.NotificationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete**](NotificationsApi.md#deletenotificationendpointapiv1notificationsadminnotificationsnotificationiddelete) | **DELETE** /api/v1/notifications/admin/notifications/{notification_id} | Delete Notification Endpoint
[**deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete**](NotificationsApi.md#deleteuserfcmtokenapiv1notificationsuserfcmtokentokenuseriddelete) | **DELETE** /api/v1/notifications/user/fcm-token/{token}/{user_id} | Delete User Fcm Token
[**deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete**](NotificationsApi.md#deletevendorfcmtokenapiv1notificationsvendorfcmtokentokenvendoriddelete) | **DELETE** /api/v1/notifications/vendor/fcm-token/{token}/{vendor_id} | Delete Vendor Fcm Token
[**getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet**](NotificationsApi.md#getnotificationdetailsapiv1notificationsadminnotificationsnotificationidget) | **GET** /api/v1/notifications/admin/notifications/{notification_id} | Get Notification Details
[**getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet**](NotificationsApi.md#getusernotificationlistapiv1notificationsusernotificationsuseridget) | **GET** /api/v1/notifications/user/notifications/{user_id} | Get User Notification List
[**getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet**](NotificationsApi.md#getvendornotificationlistapiv1notificationsvendornotificationsvendoridget) | **GET** /api/v1/notifications/vendor/notifications/{vendor_id} | Get Vendor Notification List
[**markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut**](NotificationsApi.md#markusernotificationreadapiv1notificationsusernotificationsnotificationidreaduseridput) | **PUT** /api/v1/notifications/user/notifications/{notification_id}/read/{user_id} | Mark User Notification Read
[**markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut**](NotificationsApi.md#markvendornotificationreadapiv1notificationsvendornotificationsnotificationidreadvendoridput) | **PUT** /api/v1/notifications/vendor/notifications/{notification_id}/read/{vendor_id} | Mark Vendor Notification Read
[**registerUserFcmTokenApiV1NotificationsUserFcmTokenPost**](NotificationsApi.md#registeruserfcmtokenapiv1notificationsuserfcmtokenpost) | **POST** /api/v1/notifications/user/fcm-token | Register User Fcm Token
[**registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost**](NotificationsApi.md#registervendorfcmtokenapiv1notificationsvendorfcmtokenpost) | **POST** /api/v1/notifications/vendor/fcm-token | Register Vendor Fcm Token
[**sendNotificationApiV1NotificationsAdminNotificationsPost**](NotificationsApi.md#sendnotificationapiv1notificationsadminnotificationspost) | **POST** /api/v1/notifications/admin/notifications | Send Notification


# **deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete**
> SuccessResponse deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete(notificationId)

Delete Notification Endpoint

Delete a notification and all its user instances

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final notificationId = notificationId_example; // String | Notification ID to delete

try {
    final result = api_instance.deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete(notificationId);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->deleteNotificationEndpointApiV1NotificationsAdminNotificationsNotificationIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationId** | **String**| Notification ID to delete | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete**
> SuccessResponse deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete(token, userId)

Delete User Fcm Token

Delete a specific FCM token for a user

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final token = token_example; // String | FCM token to delete
final userId = userId_example; // String | User ID

try {
    final result = api_instance.deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete(token, userId);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->deleteUserFcmTokenApiV1NotificationsUserFcmTokenTokenUserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| FCM token to delete | 
 **userId** | **String**| User ID | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete**
> SuccessResponse deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete(token, vendorId)

Delete Vendor Fcm Token

Delete a specific FCM token for a vendor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final token = token_example; // String | FCM token to delete
final vendorId = vendorId_example; // String | Vendor ID

try {
    final result = api_instance.deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete(token, vendorId);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->deleteVendorFcmTokenApiV1NotificationsVendorFcmTokenTokenVendorIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| FCM token to delete | 
 **vendorId** | **String**| Vendor ID | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet**
> NotificationDB getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet(notificationId)

Get Notification Details

Get details for a specific notification

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final notificationId = notificationId_example; // String | Notification ID to retrieve

try {
    final result = api_instance.getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet(notificationId);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->getNotificationDetailsApiV1NotificationsAdminNotificationsNotificationIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationId** | **String**| Notification ID to retrieve | 

### Return type

[**NotificationDB**](NotificationDB.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet**
> List<UserNotification> getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet(userId, limit, offset)

Get User Notification List

Get notifications for a user

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final userId = userId_example; // String | User ID
final limit = 56; // int | 
final offset = 56; // int | 

try {
    final result = api_instance.getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet(userId, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->getUserNotificationListApiV1NotificationsUserNotificationsUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID | 
 **limit** | **int**|  | [optional] [default to 20]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**List<UserNotification>**](UserNotification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet**
> List<UserNotification> getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet(vendorId, limit, offset)

Get Vendor Notification List

Get notifications for a vendor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final vendorId = vendorId_example; // String | Vendor ID
final limit = 56; // int | 
final offset = 56; // int | 

try {
    final result = api_instance.getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet(vendorId, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->getVendorNotificationListApiV1NotificationsVendorNotificationsVendorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**| Vendor ID | 
 **limit** | **int**|  | [optional] [default to 20]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**List<UserNotification>**](UserNotification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut**
> SuccessResponse markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut(notificationId, userId)

Mark User Notification Read

Mark a notification as read for a user

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final notificationId = notificationId_example; // String | Notification ID to mark as read
final userId = userId_example; // String | User ID

try {
    final result = api_instance.markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut(notificationId, userId);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->markUserNotificationReadApiV1NotificationsUserNotificationsNotificationIdReadUserIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationId** | **String**| Notification ID to mark as read | 
 **userId** | **String**| User ID | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut**
> SuccessResponse markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut(notificationId, vendorId)

Mark Vendor Notification Read

Mark a notification as read for a vendor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final notificationId = notificationId_example; // String | Notification ID to mark as read
final vendorId = vendorId_example; // String | Vendor ID

try {
    final result = api_instance.markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut(notificationId, vendorId);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->markVendorNotificationReadApiV1NotificationsVendorNotificationsNotificationIdReadVendorIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationId** | **String**| Notification ID to mark as read | 
 **vendorId** | **String**| Vendor ID | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUserFcmTokenApiV1NotificationsUserFcmTokenPost**
> TokenRegistrationResponse registerUserFcmTokenApiV1NotificationsUserFcmTokenPost(fCMTokenCreate)

Register User Fcm Token

Register or update FCM token for a user  The user_id must be provided in the token_data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final fCMTokenCreate = FCMTokenCreate(); // FCMTokenCreate | 

try {
    final result = api_instance.registerUserFcmTokenApiV1NotificationsUserFcmTokenPost(fCMTokenCreate);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->registerUserFcmTokenApiV1NotificationsUserFcmTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fCMTokenCreate** | [**FCMTokenCreate**](FCMTokenCreate.md)|  | 

### Return type

[**TokenRegistrationResponse**](TokenRegistrationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost**
> TokenRegistrationResponse registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost(fCMTokenCreate)

Register Vendor Fcm Token

Register or update FCM token for a vendor  The user_id (vendor ID) must be provided in the token_data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final fCMTokenCreate = FCMTokenCreate(); // FCMTokenCreate | 

try {
    final result = api_instance.registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost(fCMTokenCreate);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->registerVendorFcmTokenApiV1NotificationsVendorFcmTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fCMTokenCreate** | [**FCMTokenCreate**](FCMTokenCreate.md)|  | 

### Return type

[**TokenRegistrationResponse**](TokenRegistrationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendNotificationApiV1NotificationsAdminNotificationsPost**
> NotificationSendResponse sendNotificationApiV1NotificationsAdminNotificationsPost(notificationCreate)

Send Notification

Send a notification to specified targets This endpoint allows sending notifications to specific users or vendors, or broadcasting to all users or vendors

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NotificationsApi();
final notificationCreate = NotificationCreate(); // NotificationCreate | 

try {
    final result = api_instance.sendNotificationApiV1NotificationsAdminNotificationsPost(notificationCreate);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->sendNotificationApiV1NotificationsAdminNotificationsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationCreate** | [**NotificationCreate**](NotificationCreate.md)|  | 

### Return type

[**NotificationSendResponse**](NotificationSendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

