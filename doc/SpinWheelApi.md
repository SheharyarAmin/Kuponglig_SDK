# openapi.api.SpinWheelApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpinWheelConfigApiV1SpinWheelConfigUserIdGet**](SpinWheelApi.md#getspinwheelconfigapiv1spinwheelconfiguseridget) | **GET** /api/v1/spin_wheel/config/{user_id} | Get Spin Wheel Config
[**processSpinResultApiV1SpinWheelPost**](SpinWheelApi.md#processspinresultapiv1spinwheelpost) | **POST** /api/v1/spin_wheel/ | Process Spin Result


# **getSpinWheelConfigApiV1SpinWheelConfigUserIdGet**
> SpinWheelResponse getSpinWheelConfigApiV1SpinWheelConfigUserIdGet(userId)

Get Spin Wheel Config

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SpinWheelApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getSpinWheelConfigApiV1SpinWheelConfigUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling SpinWheelApi->getSpinWheelConfigApiV1SpinWheelConfigUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**SpinWheelResponse**](SpinWheelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processSpinResultApiV1SpinWheelPost**
> Object processSpinResultApiV1SpinWheelPost(spinningWheelReward)

Process Spin Result

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SpinWheelApi();
final spinningWheelReward = SpinningWheelReward(); // SpinningWheelReward | 

try {
    final result = api_instance.processSpinResultApiV1SpinWheelPost(spinningWheelReward);
    print(result);
} catch (e) {
    print('Exception when calling SpinWheelApi->processSpinResultApiV1SpinWheelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spinningWheelReward** | [**SpinningWheelReward**](SpinningWheelReward.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

