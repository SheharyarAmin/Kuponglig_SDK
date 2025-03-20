# openapi.api.VendorDashboardApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDashboardStatsApiV1VendorDashboardStatsPost**](VendorDashboardApi.md#getdashboardstatsapiv1vendordashboardstatspost) | **POST** /api/v1/vendor_dashboard/stats | Get Dashboard Stats
[**getVendorStoresApiV1VendorDashboardStoresGet**](VendorDashboardApi.md#getvendorstoresapiv1vendordashboardstoresget) | **GET** /api/v1/vendor_dashboard/stores | Get Vendor Stores


# **getDashboardStatsApiV1VendorDashboardStatsPost**
> DashboardResponse getDashboardStatsApiV1VendorDashboardStatsPost(dashboardRequest)

Get Dashboard Stats

Get vendor dashboard statistics

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorDashboardApi();
final dashboardRequest = DashboardRequest(); // DashboardRequest | 

try {
    final result = api_instance.getDashboardStatsApiV1VendorDashboardStatsPost(dashboardRequest);
    print(result);
} catch (e) {
    print('Exception when calling VendorDashboardApi->getDashboardStatsApiV1VendorDashboardStatsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardRequest** | [**DashboardRequest**](DashboardRequest.md)|  | 

### Return type

[**DashboardResponse**](DashboardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorStoresApiV1VendorDashboardStoresGet**
> Object getVendorStoresApiV1VendorDashboardStoresGet(vendorId)

Get Vendor Stores

Get all store IDs belonging to a vendor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = VendorDashboardApi();
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.getVendorStoresApiV1VendorDashboardStoresGet(vendorId);
    print(result);
} catch (e) {
    print('Exception when calling VendorDashboardApi->getVendorStoresApiV1VendorDashboardStoresGet: $e\n');
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

