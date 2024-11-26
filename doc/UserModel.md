# openapi.model.UserModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**username** | **String** |  | 
**name** | **String** |  | 
**email** | **String** |  | 
**photoUrl** | **String** |  | 
**status** | [**UserStatus**](UserStatus.md) |  | [optional] [default to UserStatus.ACTIVE]
**age** | **int** |  | 
**gender** | [**Gender**](Gender.md) |  | 
**joiningReferralCode** | **String** |  | 
**userReferralCode** | **String** |  | 
**interests** | [**List<Interests>**](Interests.md) |  | [default to const []]
**createdAt** | **String** |  | 
**updatedAt** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


