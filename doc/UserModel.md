# openapi.model.UserModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**email** | **String** |  | 
**photoUrl** | **String** |  | [optional] 
**age** | **int** |  | 
**gender** | [**Gender**](Gender.md) |  | 
**joiningReferralCode** | **String** |  | [optional] 
**interests** | [**List<Interests>**](Interests.md) |  | [default to const []]
**username** | **String** |  | 
**status** | [**UserStatus**](UserStatus.md) |  | [optional] [default to UserStatus.ACTIVE]
**userReferralCode** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


