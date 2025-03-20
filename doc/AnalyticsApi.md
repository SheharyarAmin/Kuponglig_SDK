# openapi.api.AnalyticsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**processAnalyticsBatchApiV1AnalyticsBatchPost**](AnalyticsApi.md#processanalyticsbatchapiv1analyticsbatchpost) | **POST** /api/v1/analytics/batch | Process Analytics Batch


# **processAnalyticsBatchApiV1AnalyticsBatchPost**
> bool processAnalyticsBatchApiV1AnalyticsBatchPost(analyticsEventBatch)

Process Analytics Batch

Process a batch of analytics events and update relevant statistics

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AnalyticsApi();
final analyticsEventBatch = AnalyticsEventBatch(); // AnalyticsEventBatch | 

try {
    final result = api_instance.processAnalyticsBatchApiV1AnalyticsBatchPost(analyticsEventBatch);
    print(result);
} catch (e) {
    print('Exception when calling AnalyticsApi->processAnalyticsBatchApiV1AnalyticsBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyticsEventBatch** | [**AnalyticsEventBatch**](AnalyticsEventBatch.md)|  | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

