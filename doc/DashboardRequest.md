# openapi.model.DashboardRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vendorId** | **String** | Unique identifier of the vendor | 
**storeId** | **String** |  | [optional] 
**timeFrame** | [**TimeFrame**](TimeFrame.md) |  | 
**includeExtendedMetrics** | **bool** | Whether to include performance details section | [optional] [default to false]
**metricSort** | [**MetricSortBy**](MetricSortBy.md) |  | [optional] 
**dateRange** | [**Map<String, DateTime>**](DateTime.md) |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


