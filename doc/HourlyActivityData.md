# openapi.model.HourlyActivityData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hourlyData** | [**Map<String, HourlyMetricData>**](HourlyMetricData.md) | Map of hour to detailed metrics | [default to const {}]
**maxValue** | **int** | Maximum total visits for heatmap scaling | 
**topHours** | [**Map<String, HourlyMetricData>**](HourlyMetricData.md) | Top 3 peak hours mapped to their detailed metrics | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


