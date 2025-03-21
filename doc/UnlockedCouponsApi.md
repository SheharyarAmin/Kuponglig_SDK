# openapi.api.UnlockedCouponsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGet**](UnlockedCouponsApi.md#getuserunlockedcouponlistapiv1unlockcouponsuseruseridunlockedget) | **GET** /api/v1/unlock-coupons/user/{user_id}/unlocked | Get User Unlocked Coupon List
[**unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPost**](UnlockedCouponsApi.md#unlockpremiumcouponapiv1unlockcouponsunlockuseridcouponidpost) | **POST** /api/v1/unlock-coupons/unlock/{user_id}/{coupon_id} | Unlock Premium Coupon


# **getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGet**
> List<UnlockedCouponModel> getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGet(userId)

Get User Unlocked Coupon List

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnlockedCouponsApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UnlockedCouponsApi->getUserUnlockedCouponListApiV1UnlockCouponsUserUserIdUnlockedGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<UnlockedCouponModel>**](UnlockedCouponModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPost**
> UnlockedCouponResponse unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPost(userId, couponId)

Unlock Premium Coupon

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnlockedCouponsApi();
final userId = userId_example; // String | 
final couponId = couponId_example; // String | 

try {
    final result = api_instance.unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPost(userId, couponId);
    print(result);
} catch (e) {
    print('Exception when calling UnlockedCouponsApi->unlockPremiumCouponApiV1UnlockCouponsUnlockUserIdCouponIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **couponId** | **String**|  | 

### Return type

[**UnlockedCouponResponse**](UnlockedCouponResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

