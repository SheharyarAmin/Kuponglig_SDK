# openapi.model.CouponModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**vendorId** | **String** |  | 
**storeId** | **String** |  | 
**title** | **String** |  | 
**description** | **String** |  | 
**actualValue** | **num** |  | 
**discountValue** | **num** |  | 
**saleValue** | **num** |  | 
**totalSaleValueLimit** | **num** |  | [optional] 
**startDate** | [**DateTime**](DateTime.md) |  | [optional] 
**expirationDate** | [**DateTime**](DateTime.md) |  | [optional] 
**totalCoupons** | **int** |  | [optional] 
**redeemedCoupons** | **int** |  | 
**status** | [**CouponStatus**](CouponStatus.md) |  | 
**targetType** | [**CouponTargetType**](CouponTargetType.md) |  | 
**termsAndConditions** | **String** |  | 
**minPurchaseAmount** | **num** |  | 
**isPremium** | **bool** |  | 
**unlockPoints** | **int** |  | [optional] 
**isUnlocked** | **bool** |  | [optional] [default to false]
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


