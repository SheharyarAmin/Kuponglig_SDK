# openapi.api.SavedCouponsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete**](SavedCouponsApi.md#deletesavedcouponapiv1savedcouponsuseridcouponiddelete) | **DELETE** /api/v1/saved_coupons/{user_id}/{coupon_id} | Delete Saved Coupon
[**getSavedCouponsApiV1SavedCouponsUserIdGet**](SavedCouponsApi.md#getsavedcouponsapiv1savedcouponsuseridget) | **GET** /api/v1/saved_coupons/{user_id} | Get Saved Coupons
[**saveCouponApiV1SavedCouponsPost**](SavedCouponsApi.md#savecouponapiv1savedcouponspost) | **POST** /api/v1/saved_coupons/ | Save Coupon


# **deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete**
> Object deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete(userId, couponId)

Delete Saved Coupon

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SavedCouponsApi();
final userId = userId_example; // String | 
final couponId = couponId_example; // String | 

try {
    final result = api_instance.deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete(userId, couponId);
    print(result);
} catch (e) {
    print('Exception when calling SavedCouponsApi->deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete: $e\n');
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

# **getSavedCouponsApiV1SavedCouponsUserIdGet**
> List<CouponModel> getSavedCouponsApiV1SavedCouponsUserIdGet(userId)

Get Saved Coupons

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SavedCouponsApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getSavedCouponsApiV1SavedCouponsUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling SavedCouponsApi->getSavedCouponsApiV1SavedCouponsUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<CouponModel>**](CouponModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCouponApiV1SavedCouponsPost**
> Object saveCouponApiV1SavedCouponsPost(saveCouponRequest)

Save Coupon

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SavedCouponsApi();
final saveCouponRequest = SaveCouponRequest(); // SaveCouponRequest | 

try {
    final result = api_instance.saveCouponApiV1SavedCouponsPost(saveCouponRequest);
    print(result);
} catch (e) {
    print('Exception when calling SavedCouponsApi->saveCouponApiV1SavedCouponsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **saveCouponRequest** | [**SaveCouponRequest**](SaveCouponRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

