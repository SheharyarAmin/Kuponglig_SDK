# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kouponglig-server-1089408962215.europe-west1.run.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserApiV1UserPost**](UserApi.md#createuserapiv1userpost) | **POST** /api/v1/user/ | Create User
[**deleteUserEndpointApiV1UserUserIdDelete**](UserApi.md#deleteuserendpointapiv1useruseriddelete) | **DELETE** /api/v1/user/{user_id} | Delete User Endpoint
[**getAllUsersApiV1UserGet**](UserApi.md#getallusersapiv1userget) | **GET** /api/v1/user/ | Get All Users
[**getUserApiV1UserUserIdGet**](UserApi.md#getuserapiv1useruseridget) | **GET** /api/v1/user/{user_id} | Get User
[**redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**](UserApi.md#redeemcouponbycodeapiv1redeemedcouponsredeempost) | **POST** /api/v1/redeemed_coupons/redeem | Redeem Coupon By Code
[**redeemCouponByCodeApiV1UserRedeemCouponPost**](UserApi.md#redeemcouponbycodeapiv1userredeemcouponpost) | **POST** /api/v1/user/redeem-coupon | Redeem Coupon By Code
[**redeemCouponByCodeApiV1UserRedeemCouponPost_0**](UserApi.md#redeemcouponbycodeapiv1userredeemcouponpost_0) | **POST** /api/v1/user/redeem-coupon | Redeem Coupon By Code
[**updateUserApiV1UserUserIdPut**](UserApi.md#updateuserapiv1useruseridput) | **PUT** /api/v1/user/{user_id} | Update User


# **createUserApiV1UserPost**
> UserModelFromClient createUserApiV1UserPost(userModelFromClient)

Create User

Endpoint to create a new user.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userModelFromClient = UserModelFromClient(); // UserModelFromClient | 

try {
    final result = api_instance.createUserApiV1UserPost(userModelFromClient);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->createUserApiV1UserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userModelFromClient** | [**UserModelFromClient**](UserModelFromClient.md)|  | 

### Return type

[**UserModelFromClient**](UserModelFromClient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserEndpointApiV1UserUserIdDelete**
> Object deleteUserEndpointApiV1UserUserIdDelete(userId)

Delete User Endpoint

Endpoint to delete a user.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.deleteUserEndpointApiV1UserUserIdDelete(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->deleteUserEndpointApiV1UserUserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUsersApiV1UserGet**
> List<UserModel> getAllUsersApiV1UserGet()

Get All Users

Endpoint to fetch all users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.getAllUsersApiV1UserGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getAllUsersApiV1UserGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserModel>**](UserModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserApiV1UserUserIdGet**
> UserModel getUserApiV1UserUserIdGet(userId)

Get User

Endpoint to fetch a user by ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getUserApiV1UserUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUserApiV1UserUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UserModel**](UserModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**
> Object redeemCouponByCodeApiV1RedeemedCouponsRedeemPost(qrId, couponId, userId)

Redeem Coupon By Code

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final qrId = qrId_example; // String | 
final couponId = couponId_example; // String | 
final userId = userId_example; // String | 

try {
    final result = api_instance.redeemCouponByCodeApiV1RedeemedCouponsRedeemPost(qrId, couponId, userId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->redeemCouponByCodeApiV1RedeemedCouponsRedeemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qrId** | **String**|  | 
 **couponId** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemCouponByCodeApiV1UserRedeemCouponPost**
> Object redeemCouponByCodeApiV1UserRedeemCouponPost(qrId, couponId)

Redeem Coupon By Code

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final qrId = qrId_example; // String | 
final couponId = couponId_example; // String | 

try {
    final result = api_instance.redeemCouponByCodeApiV1UserRedeemCouponPost(qrId, couponId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->redeemCouponByCodeApiV1UserRedeemCouponPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qrId** | **String**|  | 
 **couponId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemCouponByCodeApiV1UserRedeemCouponPost_0**
> Object redeemCouponByCodeApiV1UserRedeemCouponPost_0(qrId, couponId)

Redeem Coupon By Code

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final qrId = qrId_example; // String | 
final couponId = couponId_example; // String | 

try {
    final result = api_instance.redeemCouponByCodeApiV1UserRedeemCouponPost_0(qrId, couponId);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->redeemCouponByCodeApiV1UserRedeemCouponPost_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qrId** | **String**|  | 
 **couponId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserApiV1UserUserIdPut**
> UserModel updateUserApiV1UserUserIdPut(userId, userModel)

Update User

Endpoint to update user data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final userId = userId_example; // String | 
final userModel = UserModel(); // UserModel | 

try {
    final result = api_instance.updateUserApiV1UserUserIdPut(userId, userModel);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->updateUserApiV1UserUserIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **userModel** | [**UserModel**](UserModel.md)|  | 

### Return type

[**UserModel**](UserModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

