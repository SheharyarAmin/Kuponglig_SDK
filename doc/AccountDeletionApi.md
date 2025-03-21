# openapi.api.AccountDeletionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDeletionStatusApiV1DeletionDeletionRequestRequestIdGet**](AccountDeletionApi.md#getdeletionstatusapiv1deletiondeletionrequestrequestidget) | **GET** /api/v1/deletion/deletion-request/{request_id} | Get Deletion Status
[**requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPost**](AccountDeletionApi.md#requestuserdeletionapiv1deletionrequestuserdeletionuseridpost) | **POST** /api/v1/deletion/request-user-deletion/{user_id} | Request User Deletion
[**requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPost**](AccountDeletionApi.md#requestvendordeletionapiv1deletionrequestvendordeletionvendoridpost) | **POST** /api/v1/deletion/request-vendor-deletion/{vendor_id} | Request Vendor Deletion


# **getDeletionStatusApiV1DeletionDeletionRequestRequestIdGet**
> DeletionRequestModel getDeletionStatusApiV1DeletionDeletionRequestRequestIdGet(requestId)

Get Deletion Status

Get the status of a deletion request

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AccountDeletionApi();
final requestId = requestId_example; // String | 

try {
    final result = api_instance.getDeletionStatusApiV1DeletionDeletionRequestRequestIdGet(requestId);
    print(result);
} catch (e) {
    print('Exception when calling AccountDeletionApi->getDeletionStatusApiV1DeletionDeletionRequestRequestIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String**|  | 

### Return type

[**DeletionRequestModel**](DeletionRequestModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPost**
> DeletionRequestModel requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPost(userId)

Request User Deletion

Request deletion of a user account and all associated data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AccountDeletionApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPost(userId);
    print(result);
} catch (e) {
    print('Exception when calling AccountDeletionApi->requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**DeletionRequestModel**](DeletionRequestModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPost**
> DeletionRequestModel requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPost(vendorId)

Request Vendor Deletion

Request deletion of a vendor account and all associated data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AccountDeletionApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPost(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling AccountDeletionApi->requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **String**|  | 

### Return type

[**DeletionRequestModel**](DeletionRequestModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

