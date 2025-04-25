# openapi.api.CouponApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrUpdateCouponEndpointApiV1CouponPost**](CouponApi.md#addorupdatecouponendpointapiv1couponpost) | **POST** /api/v1/coupon/ | Add Or Update Coupon Endpoint
[**getCouponApiV1CouponCouponIdGet**](CouponApi.md#getcouponapiv1couponcouponidget) | **GET** /api/v1/coupon/{coupon_id} | Get Coupon
[**getCouponsByStoreApiV1CouponStoreStoreIdGet**](CouponApi.md#getcouponsbystoreapiv1couponstorestoreidget) | **GET** /api/v1/coupon/store/{store_id} | Get Coupons By Store
[**getTopCouponsApiV1CouponTopCouponsStoreIdGet**](CouponApi.md#gettopcouponsapiv1coupontopcouponsstoreidget) | **GET** /api/v1/coupon/top_coupons/{store_id} | Get Top Coupons
[**markCouponExpiredApiV1CouponExpireCouponIdPut**](CouponApi.md#markcouponexpiredapiv1couponexpirecouponidput) | **PUT** /api/v1/coupon/expire/{coupon_id} | Mark Coupon Expired


# **addOrUpdateCouponEndpointApiV1CouponPost**
> CouponModelOutput addOrUpdateCouponEndpointApiV1CouponPost(couponModelInput)

Add Or Update Coupon Endpoint

Endpoint to add or update a coupon. - Takes CouponModel as input. - Creates or updates the coupon in the Firestore database.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final couponModelInput = CouponModelInput(); // CouponModelInput | 

try {
    final result = api_instance.addOrUpdateCouponEndpointApiV1CouponPost(couponModelInput);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->addOrUpdateCouponEndpointApiV1CouponPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponModelInput** | [**CouponModelInput**](CouponModelInput.md)|  | 

### Return type

[**CouponModelOutput**](CouponModelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponApiV1CouponCouponIdGet**
> CouponModelOutput getCouponApiV1CouponCouponIdGet(couponId)

Get Coupon

Endpoint to fetch a coupon by its ID. - Takes coupon_id as a URL parameter. - Returns a CouponModel object for the given ID. - Records a view for statistics tracking.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final couponId = couponId_example; // String | 

try {
    final result = api_instance.getCouponApiV1CouponCouponIdGet(couponId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->getCouponApiV1CouponCouponIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **String**|  | 

### Return type

[**CouponModelOutput**](CouponModelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouponsByStoreApiV1CouponStoreStoreIdGet**
> List<CouponModelOutput> getCouponsByStoreApiV1CouponStoreStoreIdGet(storeId)

Get Coupons By Store

Endpoint to fetch coupons for a specific store. - Takes store_id as a URL parameter. - Returns a list of CouponModel objects for the given store.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getCouponsByStoreApiV1CouponStoreStoreIdGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->getCouponsByStoreApiV1CouponStoreStoreIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**List<CouponModelOutput>**](CouponModelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopCouponsApiV1CouponTopCouponsStoreIdGet**
> List<CouponModelOutput> getTopCouponsApiV1CouponTopCouponsStoreIdGet(storeId)

Get Top Coupons

Endpoint to fetch top coupons for a specific store. - Takes store_id as a URL parameter. - Returns a list of top CouponModel objects for the given store.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getTopCouponsApiV1CouponTopCouponsStoreIdGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->getTopCouponsApiV1CouponTopCouponsStoreIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**List<CouponModelOutput>**](CouponModelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markCouponExpiredApiV1CouponExpireCouponIdPut**
> Object markCouponExpiredApiV1CouponExpireCouponIdPut(couponId)

Mark Coupon Expired

Endpoint to mark a coupon as expired. - Takes coupon_id as a URL parameter. - Marks the coupon as expired in the Firestore database.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final couponId = couponId_example; // String | 

try {
    final result = api_instance.markCouponExpiredApiV1CouponExpireCouponIdPut(couponId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->markCouponExpiredApiV1CouponExpireCouponIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

