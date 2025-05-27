# openapi.model.ScreenNotificationsResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityId** | **String** | User or vendor ID | 
**screen** | [**Screen**](Screen.md) |  | [optional] 
**notifications** | [**List<ScreenNotificationItem>**](ScreenNotificationItem.md) | List of notifications | [default to const []]
**lastUpdated** | [**LastUpdated**](LastUpdated.md) |  | [optional] 
**hasNotifications** | **bool** | Whether notifications exist | 
**totalNotifications** | **int** | Total notification count | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


