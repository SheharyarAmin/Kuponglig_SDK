# openapi.api.UserSubscriptionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPost**](UserSubscriptionApi.md#cancelusersubscriptionapiv1usersubscriptionuseridcancelpost) | **POST** /api/v1/user/subscription/{user_id}/cancel | Cancel User Subscription
[**createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost**](UserSubscriptionApi.md#createusercheckoutsessionapiv1usersubscriptioncreatecheckoutsessionpost) | **POST** /api/v1/user/subscription/create-checkout-session | Create User Checkout Session
[**getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet**](UserSubscriptionApi.md#getusersubscriptionstatusapiv1usersubscriptionstatususeridget) | **GET** /api/v1/user/subscription/status/{user_id} | Get User Subscription Status


# **cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPost**
> Object cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPost(userId, immediate)

Cancel User Subscription

Cancels a user's subscription.  Args:     user_id: The ID of the user.     immediate: If True, cancels immediately. If False, cancels at period end.  Returns:     dict: Object containing the cancellation status.  Raises:     HTTPException: If the user has no subscription or there's an error canceling.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSubscriptionApi();
final userId = userId_example; // String | 
final immediate = true; // bool | 

try {
    final result = api_instance.cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPost(userId, immediate);
    print(result);
} catch (e) {
    print('Exception when calling UserSubscriptionApi->cancelUserSubscriptionApiV1UserSubscriptionUserIdCancelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **immediate** | **bool**|  | [optional] [default to false]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost**
> SessionResponse createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost(createUserSubscriptionSession)

Create User Checkout Session

Creates a checkout session for a user subscription.  Args:     payload: The session creation payload containing user ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.  Raises:     HTTPException: If there's an error processing the request.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSubscriptionApi();
final createUserSubscriptionSession = CreateUserSubscriptionSession(); // CreateUserSubscriptionSession | 

try {
    final result = api_instance.createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost(createUserSubscriptionSession);
    print(result);
} catch (e) {
    print('Exception when calling UserSubscriptionApi->createUserCheckoutSessionApiV1UserSubscriptionCreateCheckoutSessionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserSubscriptionSession** | [**CreateUserSubscriptionSession**](CreateUserSubscriptionSession.md)|  | 

### Return type

[**SessionResponse**](SessionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet**
> UserSubscriptionModel getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet(userId)

Get User Subscription Status

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSubscriptionApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserSubscriptionApi->getUserSubscriptionStatusApiV1UserSubscriptionStatusUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserSubscriptionModel**](UserSubscriptionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

