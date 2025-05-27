# openapi.model.VendorSubscriptionModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vendorId** | **String** |  | 
**stripeCustomerId** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**subscriptionId** | **String** |  | [optional] 
**subscriptionStatus** | [**SubscriptionStatus**](SubscriptionStatus.md) |  | [optional] [default to SubscriptionStatus.UNPAID]
**currentPeriodStart** | [**DateTime**](DateTime.md) |  | [optional] 
**currentPeriodEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**entitlements** | **List<String>** |  | [optional] [default to const []]
**cancelAtPeriodEnd** | **bool** |  | [optional] [default to false]
**lastPayment** | [**DateTime**](DateTime.md) |  | [optional] 
**trialEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


