# openapi.model.NotificationRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notificationType** | [**NotificationType**](NotificationType.md) | Type of notification | 
**severity** | [**NotificationSeverity**](NotificationSeverity.md) | Severity level of notification | 
**title** | **String** | Notification title | 
**message** | **String** | Notification message | 
**actions** | **List<String>** |  | [optional] [default to const []]
**persistent** | **bool** | Whether notification persists | [optional] [default to false]
**details** | [**Object**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


