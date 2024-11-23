# openapi.api.StoreApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStoreApiV1StoreStoresPost**](StoreApi.md#createstoreapiv1storestorespost) | **POST** /api/v1/store/stores | Create Store
[**deleteStoreApiV1StoreStoresStoreIdDelete**](StoreApi.md#deletestoreapiv1storestoresstoreiddelete) | **DELETE** /api/v1/store/stores/{store_id} | Delete Store
[**getFirstStoreByVendorApiV1StoreStoresVendorFirstGet**](StoreApi.md#getfirststorebyvendorapiv1storestoresvendorfirstget) | **GET** /api/v1/store/stores/vendor/first | Get First Store By Vendor
[**getNearbyStoresApiV1StoreStoresNearbyGet**](StoreApi.md#getnearbystoresapiv1storestoresnearbyget) | **GET** /api/v1/store/stores/nearby | Get Nearby Stores
[**getStoreApiV1StoreStoresStoreIdGet**](StoreApi.md#getstoreapiv1storestoresstoreidget) | **GET** /api/v1/store/stores/{store_id} | Get Store
[**getStoresByVendorApiV1StoreStoresVendorVendorIdGet**](StoreApi.md#getstoresbyvendorapiv1storestoresvendorvendoridget) | **GET** /api/v1/store/stores/vendor/{vendor_id} | Get Stores By Vendor
[**updateStoreApiV1StoreStoresPut**](StoreApi.md#updatestoreapiv1storestoresput) | **PUT** /api/v1/store/stores | Update Store


# **createStoreApiV1StoreStoresPost**
> StoreModel createStoreApiV1StoreStoresPost(storeModel)

Create Store

Endpoint to create a new store. - Takes StoreModel as input. - Creates and returns the new store in the Firestore.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeModel = StoreModel(); // StoreModel | 

try {
    final result = api_instance.createStoreApiV1StoreStoresPost(storeModel);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->createStoreApiV1StoreStoresPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeModel** | [**StoreModel**](StoreModel.md)|  | 

### Return type

[**StoreModel**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStoreApiV1StoreStoresStoreIdDelete**
> Object deleteStoreApiV1StoreStoresStoreIdDelete(storeId)

Delete Store

Endpoint to delete a store. - Deletes store and associated assets (logo, images) from the Firestore.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.deleteStoreApiV1StoreStoresStoreIdDelete(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->deleteStoreApiV1StoreStoresStoreIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstStoreByVendorApiV1StoreStoresVendorFirstGet**
> StoreModel getFirstStoreByVendorApiV1StoreStoresVendorFirstGet(vendorId)

Get First Store By Vendor

Endpoint to fetch the first store for a specific vendor. - Returns the first store belonging to the given vendor.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getFirstStoreByVendorApiV1StoreStoresVendorFirstGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getFirstStoreByVendorApiV1StoreStoresVendorFirstGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

### Return type

[**StoreModel**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNearbyStoresApiV1StoreStoresNearbyGet**
> List<StoreModel> getNearbyStoresApiV1StoreStoresNearbyGet(lat, lon, radius)

Get Nearby Stores

Endpoint to fetch stores near given coordinates within a specified radius. - `lat`: Latitude of the location. - `lon`: Longitude of the location. - `radius`: Radius in kilometers to search for stores. - Returns a list of nearby stores.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final lat = 8.14; // num | 
final lon = 8.14; // num | 
final radius = 8.14; // num | 

try {
    final result = api_instance.getNearbyStoresApiV1StoreStoresNearbyGet(lat, lon, radius);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getNearbyStoresApiV1StoreStoresNearbyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **num**|  | 
 **lon** | **num**|  | 
 **radius** | **num**|  | 

### Return type

[**List<StoreModel>**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreApiV1StoreStoresStoreIdGet**
> StoreModel getStoreApiV1StoreStoresStoreIdGet(storeId)

Get Store

Endpoint to retrieve a store by its ID. - Fetches store data based on store_id.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getStoreApiV1StoreStoresStoreIdGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getStoreApiV1StoreStoresStoreIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 

### Return type

[**StoreModel**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoresByVendorApiV1StoreStoresVendorVendorIdGet**
> List<StoreModel> getStoresByVendorApiV1StoreStoresVendorVendorIdGet(vendorId)

Get Stores By Vendor

Endpoint to fetch all stores for a vendor. - Returns a list of stores for the given vendor ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getStoresByVendorApiV1StoreStoresVendorVendorIdGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getStoresByVendorApiV1StoreStoresVendorVendorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

### Return type

[**List<StoreModel>**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStoreApiV1StoreStoresPut**
> StoreModel updateStoreApiV1StoreStoresPut(storeModel)

Update Store

Endpoint to update an existing store. - Takes StoreModel as input. - Updates the store data in the Firestore.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeModel = StoreModel(); // StoreModel | 

try {
    final result = api_instance.updateStoreApiV1StoreStoresPut(storeModel);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->updateStoreApiV1StoreStoresPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeModel** | [**StoreModel**](StoreModel.md)|  | 

### Return type

[**StoreModel**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

