# openapi.api.StoreApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStoreApiV1StorePost**](StoreApi.md#createstoreapiv1storepost) | **POST** /api/v1/store/ | Create Store
[**deleteStoreApiV1StoreStoreIdDelete**](StoreApi.md#deletestoreapiv1storestoreiddelete) | **DELETE** /api/v1/store/{store_id} | Delete Store
[**getFirstStoreApiV1StoreVendorFirstVendorIdGet**](StoreApi.md#getfirststoreapiv1storevendorfirstvendoridget) | **GET** /api/v1/store/vendor/first/{vendor_id} | Get First Store
[**getNearbyStoresApiV1StoreNearbyGet**](StoreApi.md#getnearbystoresapiv1storenearbyget) | **GET** /api/v1/store/nearby | Get Nearby Stores
[**getNewStoreIdApiV1StoreNewIdGet**](StoreApi.md#getnewstoreidapiv1storenewidget) | **GET** /api/v1/store/new-id | Get New Store Id
[**getStoreApiV1StoreStoreIdGet**](StoreApi.md#getstoreapiv1storestoreidget) | **GET** /api/v1/store/{store_id} | Get Store
[**getStoresByVendorApiV1StoreVendorVendorIdGet**](StoreApi.md#getstoresbyvendorapiv1storevendorvendoridget) | **GET** /api/v1/store/vendor/{vendor_id} | Get Stores By Vendor
[**updateStoreApiV1StoreStoreIdPut**](StoreApi.md#updatestoreapiv1storestoreidput) | **PUT** /api/v1/store/{store_id} | Update Store


# **createStoreApiV1StorePost**
> StoreModel createStoreApiV1StorePost(storeModelBase)

Create Store

Endpoint to create a new store. Requires an active vendor subscription.  Args:     store: The store model to create.     current_vendor: The authenticated vendor (dependency injects subscription check).  Returns:     StoreModel: The created store with subscription status information.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StoreApi();
final storeModelBase = StoreModelBase(); // StoreModelBase | 

try {
    final result = api_instance.createStoreApiV1StorePost(storeModelBase);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->createStoreApiV1StorePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeModelBase** | [**StoreModelBase**](StoreModelBase.md)|  | 

### Return type

[**StoreModel**](StoreModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStoreApiV1StoreStoreIdDelete**
> Object deleteStoreApiV1StoreStoreIdDelete(storeId)

Delete Store

Endpoint to delete a store. - Deletes store and associated assets (logo, images) from the Firestore.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.deleteStoreApiV1StoreStoreIdDelete(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->deleteStoreApiV1StoreStoreIdDelete: $e\n');
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

# **getFirstStoreApiV1StoreVendorFirstVendorIdGet**
> StoreModel getFirstStoreApiV1StoreVendorFirstVendorIdGet(vendorId)

Get First Store

Endpoint to fetch the first store for a specific vendor. - Returns the first store belonging to the given vendor.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getFirstStoreApiV1StoreVendorFirstVendorIdGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getFirstStoreApiV1StoreVendorFirstVendorIdGet: $e\n');
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

# **getNearbyStoresApiV1StoreNearbyGet**
> List<StoreModel> getNearbyStoresApiV1StoreNearbyGet(lat, lon, radius)

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
    final result = api_instance.getNearbyStoresApiV1StoreNearbyGet(lat, lon, radius);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getNearbyStoresApiV1StoreNearbyGet: $e\n');
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

# **getNewStoreIdApiV1StoreNewIdGet**
> IDResponse getNewStoreIdApiV1StoreNewIdGet()

Get New Store Id

Endpoint to generate a new store ID. - Returns a new store ID.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();

try {
    final result = api_instance.getNewStoreIdApiV1StoreNewIdGet();
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getNewStoreIdApiV1StoreNewIdGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IDResponse**](IDResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreApiV1StoreStoreIdGet**
> StoreModel getStoreApiV1StoreStoreIdGet(storeId)

Get Store

Endpoint to retrieve a store by its ID. - Fetches store data based on store_id.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeId = storeId_example; // String | 

try {
    final result = api_instance.getStoreApiV1StoreStoreIdGet(storeId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getStoreApiV1StoreStoreIdGet: $e\n');
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

# **getStoresByVendorApiV1StoreVendorVendorIdGet**
> List<StoreModel> getStoresByVendorApiV1StoreVendorVendorIdGet(vendorId)

Get Stores By Vendor

Endpoint to fetch all stores for a vendor. Includes subscription status information for vendor dashboard.  Args:     vendor_id: The vendor ID to fetch stores for.  Returns:     List of stores with subscription warning information.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getStoresByVendorApiV1StoreVendorVendorIdGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->getStoresByVendorApiV1StoreVendorVendorIdGet: $e\n');
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

# **updateStoreApiV1StoreStoreIdPut**
> StoreModel updateStoreApiV1StoreStoreIdPut(storeId, storeModelBase)

Update Store

Endpoint to update an existing store. - Takes StoreModel as input. - Updates the store data in the Firestore. - Includes subscription status information in response.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = StoreApi();
final storeId = storeId_example; // String | 
final storeModelBase = StoreModelBase(); // StoreModelBase | 

try {
    final result = api_instance.updateStoreApiV1StoreStoreIdPut(storeId, storeModelBase);
    print(result);
} catch (e) {
    print('Exception when calling StoreApi->updateStoreApiV1StoreStoreIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**|  | 
 **storeModelBase** | [**StoreModelBase**](StoreModelBase.md)|  | 

### Return type

[**StoreModel**](StoreModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

