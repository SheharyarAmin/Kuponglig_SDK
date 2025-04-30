# openapi.api.CouponApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCouponApiV1CouponPost**](CouponApi.md#createcouponapiv1couponpost) | **POST** /api/v1/coupon/ | Create Coupon
[**getCouponApiV1CouponCouponIdGet**](CouponApi.md#getcouponapiv1couponcouponidget) | **GET** /api/v1/coupon/{coupon_id} | Get Coupon
[**getCouponsForStoreApiV1CouponStoreStoreIdGet**](CouponApi.md#getcouponsforstoreapiv1couponstorestoreidget) | **GET** /api/v1/coupon/store/{store_id} | Get Coupons For Store
[**getCouponsForVendorApiV1CouponVendorVendorIdGet**](CouponApi.md#getcouponsforvendorapiv1couponvendorvendoridget) | **GET** /api/v1/coupon/vendor/{vendor_id} | Get Coupons For Vendor
[**getTopCouponsApiV1CouponTopCouponsStoreIdGet**](CouponApi.md#gettopcouponsapiv1coupontopcouponsstoreidget) | **GET** /api/v1/coupon/top_coupons/{store_id} | Get Top Coupons
[**markCouponExpiredApiV1CouponExpireCouponIdPut**](CouponApi.md#markcouponexpiredapiv1couponexpirecouponidput) | **PUT** /api/v1/coupon/expire/{coupon_id} | Mark Coupon Expired
[**removeCouponApiV1CouponCouponIdDelete**](CouponApi.md#removecouponapiv1couponcouponiddelete) | **DELETE** /api/v1/coupon/{coupon_id} | Remove Coupon
[**updateCouponApiV1CouponCouponIdPut**](CouponApi.md#updatecouponapiv1couponcouponidput) | **PUT** /api/v1/coupon/{coupon_id} | Update Coupon


# **createCouponApiV1CouponPost**
> CouponModelOutput createCouponApiV1CouponPost(couponModelInput)

Create Coupon

Endpoint to create a new coupon. Requires an active vendor subscription.  Args:     coupon: The coupon model.     token: The JWT token.  Returns:     CouponModel: The created coupon.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final couponModelInput = CouponModelInput(); // CouponModelInput | 

try {
    final result = api_instance.createCouponApiV1CouponPost(couponModelInput);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->createCouponApiV1CouponPost: $e\n');
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

Endpoint to retrieve a coupon by ID. Public access (no subscription required).  Args:     coupon_id: The ID of the coupon.  Returns:     CouponModel: The coupon.

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

# **getCouponsForStoreApiV1CouponStoreStoreIdGet**
> List<CouponModelOutput> getCouponsForStoreApiV1CouponStoreStoreIdGet(storeId)

Get Coupons For Store

Endpoint to retrieve all coupons for a store. Public access (no subscription required).  Args:     store_id: The ID of the store.  Returns:     List[CouponModel]: The list of coupons.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getCouponsForStoreApiV1CouponStoreStoreIdGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->getCouponsForStoreApiV1CouponStoreStoreIdGet: $e\n');
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

# **getCouponsForVendorApiV1CouponVendorVendorIdGet**
> List<CouponModelOutput> getCouponsForVendorApiV1CouponVendorVendorIdGet(vendorId)

Get Coupons For Vendor

Endpoint to retrieve all coupons for a vendor. Public access (no subscription required).  Args:     vendor_id: The ID of the vendor.  Returns:     List[CouponModel]: The list of coupons.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getCouponsForVendorApiV1CouponVendorVendorIdGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->getCouponsForVendorApiV1CouponVendorVendorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

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

Endpoint to mark a coupon as expired. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     token: The JWT token.  Returns:     dict: Success message.

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

# **removeCouponApiV1CouponCouponIdDelete**
> Object removeCouponApiV1CouponCouponIdDelete(couponId)

Remove Coupon

Endpoint to delete a coupon. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     token: The JWT token.  Returns:     dict: Success message.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final couponId = couponId_example; // String | 

try {
    final result = api_instance.removeCouponApiV1CouponCouponIdDelete(couponId);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->removeCouponApiV1CouponCouponIdDelete: $e\n');
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

# **updateCouponApiV1CouponCouponIdPut**
> CouponModelOutput updateCouponApiV1CouponCouponIdPut(couponId, couponModelInput)

Update Coupon

Endpoint to update a coupon. Requires an active vendor subscription.  Args:     coupon_id: The ID of the coupon.     coupon: The updated coupon model.     token: The JWT token.  Returns:     CouponModel: The updated coupon.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CouponApi();
final couponId = couponId_example; // String | 
final couponModelInput = CouponModelInput(); // CouponModelInput | 

try {
    final result = api_instance.updateCouponApiV1CouponCouponIdPut(couponId, couponModelInput);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->updateCouponApiV1CouponCouponIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **String**|  | 
 **couponModelInput** | [**CouponModelInput**](CouponModelInput.md)|  | 

### Return type

[**CouponModelOutput**](CouponModelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

