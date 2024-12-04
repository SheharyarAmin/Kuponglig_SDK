# openapi.api.WonCouponsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kouponglig-server-1089408962215.europe-west1.run.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWonCouponApiV1WonCouponsUserIdCouponIdDelete**](WonCouponsApi.md#deletewoncouponapiv1woncouponsuseridcouponiddelete) | **DELETE** /api/v1/won_coupons/{user_id}/{coupon_id} | Delete Won Coupon
[**getWonCouponsApiV1WonCouponsUserIdGet**](WonCouponsApi.md#getwoncouponsapiv1woncouponsuseridget) | **GET** /api/v1/won_coupons/{user_id} | Get Won Coupons


# **deleteWonCouponApiV1WonCouponsUserIdCouponIdDelete**
> Object deleteWonCouponApiV1WonCouponsUserIdCouponIdDelete(userId, couponId)

Delete Won Coupon

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WonCouponsApi();
final userId = userId_example; // String | 
final couponId = couponId_example; // String | 

try {
    final result = api_instance.deleteWonCouponApiV1WonCouponsUserIdCouponIdDelete(userId, couponId);
    print(result);
} catch (e) {
    print('Exception when calling WonCouponsApi->deleteWonCouponApiV1WonCouponsUserIdCouponIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **couponId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWonCouponsApiV1WonCouponsUserIdGet**
> List<WonCouponModel> getWonCouponsApiV1WonCouponsUserIdGet(userId)

Get Won Coupons

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WonCouponsApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getWonCouponsApiV1WonCouponsUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling WonCouponsApi->getWonCouponsApiV1WonCouponsUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<WonCouponModel>**](WonCouponModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

