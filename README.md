# openapi
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1.0
- Generator version: 7.10.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';


final api_instance = CouponApi();
final couponModel = CouponModel(); // CouponModel | 

try {
    final result = api_instance.addOrUpdateCouponEndpointApiV1CouponPost(couponModel);
    print(result);
} catch (e) {
    print('Exception when calling CouponApi->addOrUpdateCouponEndpointApiV1CouponPost: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CouponApi* | [**addOrUpdateCouponEndpointApiV1CouponPost**](doc//CouponApi.md#addorupdatecouponendpointapiv1couponpost) | **POST** /api/v1/coupon/ | Add Or Update Coupon Endpoint
*CouponApi* | [**getCouponApiV1CouponCouponIdGet**](doc//CouponApi.md#getcouponapiv1couponcouponidget) | **GET** /api/v1/coupon/{coupon_id} | Get Coupon
*CouponApi* | [**getCouponsByStoreApiV1CouponStoreStoreIdGet**](doc//CouponApi.md#getcouponsbystoreapiv1couponstorestoreidget) | **GET** /api/v1/coupon/store/{store_id} | Get Coupons By Store
*CouponApi* | [**markCouponExpiredApiV1CouponExpireCouponIdPut**](doc//CouponApi.md#markcouponexpiredapiv1couponexpirecouponidput) | **PUT** /api/v1/coupon/expire/{coupon_id} | Mark Coupon Expired
*DefaultApi* | [**loginForAccessTokenAuthTokenPost**](doc//DefaultApi.md#loginforaccesstokenauthtokenpost) | **POST** /auth/token | Login For Access Token
*DefaultApi* | [**pingAuthPingGet**](doc//DefaultApi.md#pingauthpingget) | **GET** /auth/ping | Ping
*DefaultApi* | [**refreshAccessTokenAuthRefreshPost**](doc//DefaultApi.md#refreshaccesstokenauthrefreshpost) | **POST** /auth/refresh | Refresh Access Token
*RedeemedCouponsApi* | [**redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**](doc//RedeemedCouponsApi.md#redeemcouponbycodeapiv1redeemedcouponsredeempost) | **POST** /api/v1/redeemed_coupons/redeem | Redeem Coupon By Code
*SavedCouponsApi* | [**deleteSavedCouponApiV1SavedCouponsUserIdCouponIdDelete**](doc//SavedCouponsApi.md#deletesavedcouponapiv1savedcouponsuseridcouponiddelete) | **DELETE** /api/v1/saved_coupons/{user_id}/{coupon_id} | Delete Saved Coupon
*SavedCouponsApi* | [**getSavedCouponsApiV1SavedCouponsUserIdGet**](doc//SavedCouponsApi.md#getsavedcouponsapiv1savedcouponsuseridget) | **GET** /api/v1/saved_coupons/{user_id} | Get Saved Coupons
*SavedCouponsApi* | [**saveCouponApiV1SavedCouponsPost**](doc//SavedCouponsApi.md#savecouponapiv1savedcouponspost) | **POST** /api/v1/saved_coupons/ | Save Coupon
*SpinWheelApi* | [**getSpinWheelConfigApiV1SpinWheelConfigUserIdGet**](doc//SpinWheelApi.md#getspinwheelconfigapiv1spinwheelconfiguseridget) | **GET** /api/v1/spin_wheel/config/{user_id} | Get Spin Wheel Config
*SpinWheelApi* | [**processSpinResultApiV1SpinWheelPost**](doc//SpinWheelApi.md#processspinresultapiv1spinwheelpost) | **POST** /api/v1/spin_wheel/ | Process Spin Result
*StoreApi* | [**createStoreApiV1StoreStoresPost**](doc//StoreApi.md#createstoreapiv1storestorespost) | **POST** /api/v1/store/stores | Create Store
*StoreApi* | [**deleteStoreApiV1StoreStoresStoreIdDelete**](doc//StoreApi.md#deletestoreapiv1storestoresstoreiddelete) | **DELETE** /api/v1/store/stores/{store_id} | Delete Store
*StoreApi* | [**getFirstStoreByVendorApiV1StoreStoresVendorFirstGet**](doc//StoreApi.md#getfirststorebyvendorapiv1storestoresvendorfirstget) | **GET** /api/v1/store/stores/vendor/first | Get First Store By Vendor
*StoreApi* | [**getNearbyStoresApiV1StoreStoresNearbyGet**](doc//StoreApi.md#getnearbystoresapiv1storestoresnearbyget) | **GET** /api/v1/store/stores/nearby | Get Nearby Stores
*StoreApi* | [**getStoreApiV1StoreStoresStoreIdGet**](doc//StoreApi.md#getstoreapiv1storestoresstoreidget) | **GET** /api/v1/store/stores/{store_id} | Get Store
*StoreApi* | [**getStoresByVendorApiV1StoreStoresVendorVendorIdGet**](doc//StoreApi.md#getstoresbyvendorapiv1storestoresvendorvendoridget) | **GET** /api/v1/store/stores/vendor/{vendor_id} | Get Stores By Vendor
*StoreApi* | [**updateStoreApiV1StoreStoresPut**](doc//StoreApi.md#updatestoreapiv1storestoresput) | **PUT** /api/v1/store/stores | Update Store
*UserApi* | [**createUserApiV1UserPost**](doc//UserApi.md#createuserapiv1userpost) | **POST** /api/v1/user/ | Create User
*UserApi* | [**deleteUserEndpointApiV1UserUserIdDelete**](doc//UserApi.md#deleteuserendpointapiv1useruseriddelete) | **DELETE** /api/v1/user/{user_id} | Delete User Endpoint
*UserApi* | [**getAllUsersApiV1UserGet**](doc//UserApi.md#getallusersapiv1userget) | **GET** /api/v1/user/ | Get All Users
*UserApi* | [**getUserApiV1UserUserIdGet**](doc//UserApi.md#getuserapiv1useruseridget) | **GET** /api/v1/user/{user_id} | Get User
*UserApi* | [**redeemCouponByCodeApiV1RedeemedCouponsRedeemPost**](doc//UserApi.md#redeemcouponbycodeapiv1redeemedcouponsredeempost) | **POST** /api/v1/redeemed_coupons/redeem | Redeem Coupon By Code
*UserApi* | [**redeemCouponByCodeApiV1UserRedeemCouponPost**](doc//UserApi.md#redeemcouponbycodeapiv1userredeemcouponpost) | **POST** /api/v1/user/redeem-coupon | Redeem Coupon By Code
*UserApi* | [**redeemCouponByCodeApiV1UserRedeemCouponPost_0**](doc//UserApi.md#redeemcouponbycodeapiv1userredeemcouponpost_0) | **POST** /api/v1/user/redeem-coupon | Redeem Coupon By Code
*UserApi* | [**updateUserApiV1UserUserIdPut**](doc//UserApi.md#updateuserapiv1useruseridput) | **PUT** /api/v1/user/{user_id} | Update User
*UserPointsApi* | [**addPointsApiV1UserPointsAddPost**](doc//UserPointsApi.md#addpointsapiv1userpointsaddpost) | **POST** /api/v1/user_points/add | Add Points
*UserPointsApi* | [**deductPointsApiV1UserPointsDeductPost**](doc//UserPointsApi.md#deductpointsapiv1userpointsdeductpost) | **POST** /api/v1/user_points/deduct | Deduct Points
*UserPointsApi* | [**getPointsBalanceApiV1UserPointsBalanceUserIdGet**](doc//UserPointsApi.md#getpointsbalanceapiv1userpointsbalanceuseridget) | **GET** /api/v1/user_points/balance/{user_id} | Get Points Balance
*UserPointsApi* | [**getPointsTransactionsApiV1UserPointsTransactionsUserIdGet**](doc//UserPointsApi.md#getpointstransactionsapiv1userpointstransactionsuseridget) | **GET** /api/v1/user_points/transactions/{user_id} | Get Points Transactions
*VendorApi* | [**deleteVendorApiV1VendorVendorsVendorIdDelete**](doc//VendorApi.md#deletevendorapiv1vendorvendorsvendoriddelete) | **DELETE** /api/v1/vendor/vendors/{vendor_id} | Delete Vendor
*VendorApi* | [**getVendorApiV1VendorVendorsVendorIdGet**](doc//VendorApi.md#getvendorapiv1vendorvendorsvendoridget) | **GET** /api/v1/vendor/vendors/{vendor_id} | Get Vendor
*VendorApi* | [**saveVendorApiV1VendorVendorsPost**](doc//VendorApi.md#savevendorapiv1vendorvendorspost) | **POST** /api/v1/vendor/vendors | Save Vendor
*VendorApi* | [**updateVendorApiV1VendorVendorsVendorIdPut**](doc//VendorApi.md#updatevendorapiv1vendorvendorsvendoridput) | **PUT** /api/v1/vendor/vendors/{vendor_id} | Update Vendor
*VendorApi* | [**uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost**](doc//VendorApi.md#uploadvendoridcardapiv1vendorvendorsvendoriduploadidcardpost) | **POST** /api/v1/vendor/vendors/{vendor_id}/upload-id-card | Upload Vendor Id Card
*WonCouponsApi* | [**deleteWonCouponApiV1WonCouponsUserIdCouponIdDelete**](doc//WonCouponsApi.md#deletewoncouponapiv1woncouponsuseridcouponiddelete) | **DELETE** /api/v1/won_coupons/{user_id}/{coupon_id} | Delete Won Coupon
*WonCouponsApi* | [**getWonCouponsApiV1WonCouponsUserIdGet**](doc//WonCouponsApi.md#getwoncouponsapiv1woncouponsuseridget) | **GET** /api/v1/won_coupons/{user_id} | Get Won Coupons


## Documentation For Models

 - [AuthenticationToken](doc//AuthenticationToken.md)
 - [CouponModel](doc//CouponModel.md)
 - [CouponStatus](doc//CouponStatus.md)
 - [CouponTargetType](doc//CouponTargetType.md)
 - [Gender](doc//Gender.md)
 - [GeoPoint](doc//GeoPoint.md)
 - [HTTPValidationError](doc//HTTPValidationError.md)
 - [Interests](doc//Interests.md)
 - [Platform](doc//Platform.md)
 - [RewardType](doc//RewardType.md)
 - [SaveCouponRequest](doc//SaveCouponRequest.md)
 - [SpinWheelResponse](doc//SpinWheelResponse.md)
 - [SpinningWheelReward](doc//SpinningWheelReward.md)
 - [StoreModel](doc//StoreModel.md)
 - [StoreStatus](doc//StoreStatus.md)
 - [StoreTypes](doc//StoreTypes.md)
 - [Token](doc//Token.md)
 - [UserModel](doc//UserModel.md)
 - [UserPointsTransactionModel](doc//UserPointsTransactionModel.md)
 - [UserStatus](doc//UserStatus.md)
 - [ValidationError](doc//ValidationError.md)
 - [ValidationErrorLocInner](doc//ValidationErrorLocInner.md)
 - [VendorModel](doc//VendorModel.md)
 - [WonCouponModel](doc//WonCouponModel.md)


## Documentation For Authorization

Endpoints do not require authorization.


## Author



