# openapi.model.NotificationDB

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | 
**body** | **String** |  | 
**category** | [**NotificationCategory**](NotificationCategory.md) |  | 
**imageUrl** | **String** |  | [optional] 
**targetType** | [**NotificationTarget**](NotificationTarget.md) |  | 
**actionData** | [**Object**](.md) |  | [optional] 
**id** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**scheduledFor** | [**DateTime**](DateTime.md) |  | [optional] 
**sentAt** | [**DateTime**](DateTime.md) |  | [optional] 
**status** | [**NotificationStatus**](NotificationStatus.md) |  | [optional] [default to NotificationStatus.pending]
**recipientIds** | **List<String>** |  | [optional] [default to const []]
**sentToCount** | **int** |  | [optional] [default to 0]
**readByCount** | **int** |  | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


