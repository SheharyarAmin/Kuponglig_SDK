# openapi.api.UserPointsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://kouponglig-server-1089408962215.europe-west1.run.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPointsApiV1UserPointsAddPost**](UserPointsApi.md#addpointsapiv1userpointsaddpost) | **POST** /api/v1/user_points/add | Add Points
[**deductPointsApiV1UserPointsDeductPost**](UserPointsApi.md#deductpointsapiv1userpointsdeductpost) | **POST** /api/v1/user_points/deduct | Deduct Points
[**getPointsBalanceApiV1UserPointsBalanceUserIdGet**](UserPointsApi.md#getpointsbalanceapiv1userpointsbalanceuseridget) | **GET** /api/v1/user_points/balance/{user_id} | Get Points Balance
[**getPointsTransactionsApiV1UserPointsTransactionsUserIdGet**](UserPointsApi.md#getpointstransactionsapiv1userpointstransactionsuseridget) | **GET** /api/v1/user_points/transactions/{user_id} | Get Points Transactions


# **addPointsApiV1UserPointsAddPost**
> Object addPointsApiV1UserPointsAddPost(userId, points, reason)

Add Points

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserPointsApi();
final userId = userId_example; // String | 
final points = 56; // int | 
final reason = reason_example; // String | 

try {
    final result = api_instance.addPointsApiV1UserPointsAddPost(userId, points, reason);
    print(result);
} catch (e) {
    print('Exception when calling UserPointsApi->addPointsApiV1UserPointsAddPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **points** | **int**|  | 
 **reason** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deductPointsApiV1UserPointsDeductPost**
> Object deductPointsApiV1UserPointsDeductPost(userId, points, reason)

Deduct Points

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserPointsApi();
final userId = userId_example; // String | 
final points = 56; // int | 
final reason = reason_example; // String | 

try {
    final result = api_instance.deductPointsApiV1UserPointsDeductPost(userId, points, reason);
    print(result);
} catch (e) {
    print('Exception when calling UserPointsApi->deductPointsApiV1UserPointsDeductPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **points** | **int**|  | 
 **reason** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPointsBalanceApiV1UserPointsBalanceUserIdGet**
> int getPointsBalanceApiV1UserPointsBalanceUserIdGet(userId)

Get Points Balance

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserPointsApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getPointsBalanceApiV1UserPointsBalanceUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserPointsApi->getPointsBalanceApiV1UserPointsBalanceUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPointsTransactionsApiV1UserPointsTransactionsUserIdGet**
> List<UserPointsTransactionModel> getPointsTransactionsApiV1UserPointsTransactionsUserIdGet(userId)

Get Points Transactions

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserPointsApi();
final userId = userId_example; // String | 

try {
    final result = api_instance.getPointsTransactionsApiV1UserPointsTransactionsUserIdGet(userId);
    print(result);
} catch (e) {
    print('Exception when calling UserPointsApi->getPointsTransactionsApiV1UserPointsTransactionsUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**List<UserPointsTransactionModel>**](UserPointsTransactionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

