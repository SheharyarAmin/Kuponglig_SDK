# openapi.api.VendorApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelVendorDeletionApiV1VendorVendorsVendorIdCancelDeletionPost**](VendorApi.md#cancelvendordeletionapiv1vendorvendorsvendoridcanceldeletionpost) | **POST** /api/v1/vendor/vendors/{vendor_id}/cancel-deletion | Cancel Vendor Deletion
[**deleteVendorApiV1VendorVendorsVendorIdDelete**](VendorApi.md#deletevendorapiv1vendorvendorsvendoriddelete) | **DELETE** /api/v1/vendor/vendors/{vendor_id} | Delete Vendor
[**getVendorApiV1VendorVendorsVendorIdGet**](VendorApi.md#getvendorapiv1vendorvendorsvendoridget) | **GET** /api/v1/vendor/vendors/{vendor_id} | Get Vendor
[**saveVendorApiV1VendorVendorsPost**](VendorApi.md#savevendorapiv1vendorvendorspost) | **POST** /api/v1/vendor/vendors | Save Vendor
[**updateVendorApiV1VendorVendorsVendorIdPut**](VendorApi.md#updatevendorapiv1vendorvendorsvendoridput) | **PUT** /api/v1/vendor/vendors/{vendor_id} | Update Vendor
[**uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost**](VendorApi.md#uploadvendoridcardapiv1vendorvendorsvendoriduploadidcardpost) | **POST** /api/v1/vendor/vendors/{vendor_id}/upload-id-card | Upload Vendor Id Card


# **cancelVendorDeletionApiV1VendorVendorsVendorIdCancelDeletionPost**
> Object cancelVendorDeletionApiV1VendorVendorsVendorIdCancelDeletionPost(vendorId)

Cancel Vendor Deletion

Endpoint to cancel a scheduled vendor deletion.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.cancelVendorDeletionApiV1VendorVendorsVendorIdCancelDeletionPost(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling VendorApi->cancelVendorDeletionApiV1VendorVendorsVendorIdCancelDeletionPost: $e\n');
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

# **deleteVendorApiV1VendorVendorsVendorIdDelete**
> Object deleteVendorApiV1VendorVendorsVendorIdDelete(vendorId)

Delete Vendor

Endpoint to schedule vendor deletion after 15 days. Creates a deletion request that will be processed by the cleanup scheduler.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.deleteVendorApiV1VendorVendorsVendorIdDelete(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling VendorApi->deleteVendorApiV1VendorVendorsVendorIdDelete: $e\n');
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

# **getVendorApiV1VendorVendorsVendorIdGet**
> VendorModel getVendorApiV1VendorVendorsVendorIdGet(vendorId, checkDeletionStatus, login)

Get Vendor

Endpoint to retrieve vendor data from Firestore by vendor_id. When check_deletion_status=True, it will also check if there's a pending deletion request. When login=True, any pending deletion requests will be automatically canceled.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorApi();
final vendorId = vendorId_example; // String | 
final checkDeletionStatus = true; // bool | 
final login = true; // bool | 

try {
    final result = api_instance.getVendorApiV1VendorVendorsVendorIdGet(vendorId, checkDeletionStatus, login);
    print(result);
} catch (e) {
    print('Exception when calling VendorApi->getVendorApiV1VendorVendorsVendorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 
 **checkDeletionStatus** | **bool**|  | [optional] [default to false]
 **login** | **bool**|  | [optional] [default to false]

### Return type

[**VendorModel**](VendorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveVendorApiV1VendorVendorsPost**
> VendorModel saveVendorApiV1VendorVendorsPost(vendorModel)

Save Vendor

Endpoint to save vendor data to Firestore. Calls the `save_vendor_data` function from CRUD operations.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorApi();
final vendorModel = VendorModel(); // VendorModel | 

try {
    final result = api_instance.saveVendorApiV1VendorVendorsPost(vendorModel);
    print(result);
} catch (e) {
    print('Exception when calling VendorApi->saveVendorApiV1VendorVendorsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorModel** | [**VendorModel**](VendorModel.md)|  | 

### Return type

[**VendorModel**](VendorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVendorApiV1VendorVendorsVendorIdPut**
> VendorModel updateVendorApiV1VendorVendorsVendorIdPut(vendorId, vendorModel)

Update Vendor

Endpoint to update vendor data. Calls the `update_vendor_data` function from CRUD operations.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorApi();
final vendorId = vendorId_example; // String | 
final vendorModel = VendorModel(); // VendorModel | 

try {
    final result = api_instance.updateVendorApiV1VendorVendorsVendorIdPut(vendorId, vendorModel);
    print(result);
} catch (e) {
    print('Exception when calling VendorApi->updateVendorApiV1VendorVendorsVendorIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 
 **vendorModel** | [**VendorModel**](VendorModel.md)|  | 

### Return type

[**VendorModel**](VendorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost**
> Object uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost(vendorId, file)

Upload Vendor Id Card

Endpoint to upload a vendor's ID card to Firebase Storage. Calls the `upload_vendor_id_card` function from CRUD operations.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorApi();
final vendorId = vendorId_example; // String | 
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost(vendorId, file);
    print(result);
} catch (e) {
    print('Exception when calling VendorApi->uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 
 **file** | **MultipartFile**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

