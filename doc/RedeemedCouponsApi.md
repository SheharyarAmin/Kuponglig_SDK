# openapi.api.RedeemedCouponsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kouponglig-server-1089408962215.europe-west1.run.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**](RedeemedCouponsApi.md#redeemcouponbycodeapiv1redeemedcouponsredeempost) | **POST** /api/v1/redeemed_coupons/redeem | Redeem Coupon By Code


# **redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**
> Object redeemCouponByCodeApiV1RedeemedCouponsRedeemPost(qrId, couponId, userId)

Redeem Coupon By Code

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RedeemedCouponsApi();
final qrId = qrId_example; // String | 
final couponId = couponId_example; // String | 
final userId = userId_example; // String | 

try {
    final result = api_instance.redeemCouponByCodeApiV1RedeemedCouponsRedeemPost(qrId, couponId, userId);
    print(result);
} catch (e) {
    print('Exception when calling RedeemedCouponsApi->redeemCouponByCodeApiV1RedeemedCouponsRedeemPost: $e\n');
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

