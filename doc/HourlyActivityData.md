# openapi.model.HourlyActivityData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hourlyData** | **Map<String, int>** | Map of hour to visit count | [default to const {}]
**maxValue** | **int** | Maximum visits for heatmap scaling | 
**topHours** | [**List<HourlyMetric>**](HourlyMetric.md) | Top 3 peak hours sorted by visit count | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


