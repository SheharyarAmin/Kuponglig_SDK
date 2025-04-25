# openapi.api.RedeemedCouponsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGet**](RedeemedCouponsApi.md#getuserredeemedcouponsapiv1redeemedcouponsuserhistoryget) | **GET** /api/v1/redeemed_coupons/user-history | Get User Redeemed Coupons
[**redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**](RedeemedCouponsApi.md#redeemcouponbycodeapiv1redeemedcouponsredeempost) | **POST** /api/v1/redeemed_coupons/redeem | Redeem Coupon By Code


# **getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGet**
> UserRedeemedCouponsListResponse getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGet(userId, limit)

Get User Redeemed Coupons

Get the last N redeemed coupons for a user.  Args:     user_id: The ID of the user     limit: Maximum number of coupons to return (default 10)      Returns:     A list of the user's redeemed coupons with coupon and store details

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RedeemedCouponsApi();
final userId = userId_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGet(userId, limit);
    print(result);
} catch (e) {
    print('Exception when calling RedeemedCouponsApi->getUserRedeemedCouponsApiV1RedeemedCouponsUserHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **limit** | **int**|  | [optional] [default to 10]

### Return type

[**UserRedeemedCouponsListResponse**](UserRedeemedCouponsListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**
> CouponRedemptionResponse redeemCouponByCodeApiV1RedeemedCouponsRedeemPost(qrId, couponId, userId)

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

[**CouponRedemptionResponse**](CouponRedemptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

