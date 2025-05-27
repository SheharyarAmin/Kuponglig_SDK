# openapi.model.ScreenNotificationItem

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique notification identifier | 
**type** | **String** | Notification type | 
**severity** | **String** | Notification severity level | 
**title** | **String** | Notification title | 
**message** | **String** | Notification message content | 
**actions** | **List<String>** | Available actions | [optional] [default to const []]
**persistent** | **bool** | Whether notification persists | [optional] [default to false]
**details** | [**Object**](.md) | Additional details | [optional] 
**createdAt** | **String** | Creation timestamp | 
**expiresAt** | **String** |  | [optional] 
**screen** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


