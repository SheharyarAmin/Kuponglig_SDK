# openapi.api.StoreReviewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addReviewApiV1StoreReviewsPost**](StoreReviewsApi.md#addreviewapiv1storereviewspost) | **POST** /api/v1/store-reviews/ | Add Review
[**deleteReviewApiV1StoreReviewsReviewIdDelete**](StoreReviewsApi.md#deletereviewapiv1storereviewsreviewiddelete) | **DELETE** /api/v1/store-reviews/{review_id} | Delete Review
[**getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet**](StoreReviewsApi.md#getreviewstatsforstoreapiv1storereviewsstorestoreidstatsget) | **GET** /api/v1/store-reviews/store/{store_id}/stats | Get Review Stats For Store
[**getReviewsByUserApiV1StoreReviewsUserUserIdGet**](StoreReviewsApi.md#getreviewsbyuserapiv1storereviewsuseruseridget) | **GET** /api/v1/store-reviews/user/{user_id} | Get Reviews By User
[**getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet**](StoreReviewsApi.md#getreviewsforstoreapiv1storereviewsstorestoreidget) | **GET** /api/v1/store-reviews/store/{store_id} | Get Reviews For Store
[**getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet**](StoreReviewsApi.md#getuserreviewapiv1storereviewsuserstoreiduseridget) | **GET** /api/v1/store-reviews/user/{store_id}/{user_id} | Get User Review
[**getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet**](StoreReviewsApi.md#getvendorstorereviewsapiv1storereviewsvendorstoresvendoridget) | **GET** /api/v1/store-reviews/vendor/stores/{vendor_id} | Get Vendor Store Reviews


# **addReviewApiV1StoreReviewsPost**
> StoreReviewModel addReviewApiV1StoreReviewsPost(storeReviewCreate)

Add Review

Submit a review for a store.  Args:     review: The review data      Returns:     The created review

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final storeReviewCreate = StoreReviewCreate(); // StoreReviewCreate | 

try {
    final result = api_instance.addReviewApiV1StoreReviewsPost(storeReviewCreate);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->addReviewApiV1StoreReviewsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeReviewCreate** | [**StoreReviewCreate**](StoreReviewCreate.md)|  | 

### Return type

[**StoreReviewModel**](StoreReviewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReviewApiV1StoreReviewsReviewIdDelete**
> Object deleteReviewApiV1StoreReviewsReviewIdDelete(reviewId)

Delete Review

Delete a review.  Args:     review_id: The ID of the review to delete      Returns:     Success message

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final reviewId = reviewId_example; // String | 

try {
    final result = api_instance.deleteReviewApiV1StoreReviewsReviewIdDelete(reviewId);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->deleteReviewApiV1StoreReviewsReviewIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet**
> StoreReviewStats getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet(storeId)

Get Review Stats For Store

Get review statistics for a store.  Args:     store_id: The ID of the store      Returns:     Review statistics

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->getReviewStatsForStoreApiV1StoreReviewsStoreStoreIdStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**StoreReviewStats**](StoreReviewStats.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReviewsByUserApiV1StoreReviewsUserUserIdGet**
> List<StoreReviewModel> getReviewsByUserApiV1StoreReviewsUserUserIdGet(userId)

Get Reviews By User

Get all reviews by the current user.  Returns:     List of reviews by the user

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getReviewsByUserApiV1StoreReviewsUserUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->getReviewsByUserApiV1StoreReviewsUserUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<StoreReviewModel>**](StoreReviewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet**
> List<StoreReviewResponse> getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet(storeId)

Get Reviews For Store

Get all reviews for a store with user information.  Args:     store_id: The ID of the store      Returns:     List of reviews with user information

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->getReviewsForStoreApiV1StoreReviewsStoreStoreIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**List<StoreReviewResponse>**](StoreReviewResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet**
> StoreReviewModel getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet(storeId, userId)

Get User Review

Get a user's review for a specific store.  Args:     store_id: The ID of the store      Returns:     The user's review if exists

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final storeId = storeId_example; // String | 
final userId = userId_example; // String | 

try {
    final result = api_instance.getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet(storeId, userId);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->getUserReviewApiV1StoreReviewsUserStoreIdUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**StoreReviewModel**](StoreReviewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet**
> Object getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet(vendorId)

Get Vendor Store Reviews

Get review statistics for all stores owned by a vendor.  Returns:     Dictionary mapping store IDs to review statistics

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreReviewsApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling StoreReviewsApi->getVendorStoreReviewsApiV1StoreReviewsVendorStoresVendorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

