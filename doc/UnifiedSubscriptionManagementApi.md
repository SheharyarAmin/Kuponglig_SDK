# openapi.api.UnifiedSubscriptionManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPost**](UnifiedSubscriptionManagementApi.md#checksubscriptionactiveapiv1subscriptioncheckactiveentitytypeentityidpost) | **POST** /api/v1/subscription/check-active/{entity_type}/{entity_id} | Check Subscription Active
[**createDynamicSubscriptionSessionApiV1SubscriptionDynamicPost**](UnifiedSubscriptionManagementApi.md#createdynamicsubscriptionsessionapiv1subscriptiondynamicpost) | **POST** /api/v1/subscription/dynamic | Create Dynamic Subscription Session
[**getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGet**](UnifiedSubscriptionManagementApi.md#getcurrententitysubscriptionstatusapiv1subscriptionstatusget) | **GET** /api/v1/subscription/status | Get Current Entity Subscription Status
[**getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGet**](UnifiedSubscriptionManagementApi.md#getsubscriptionstatusapiv1subscriptionstatusentitytypeentityidget) | **GET** /api/v1/subscription/status/{entity_type}/{entity_id} | Get Subscription Status
[**updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPost**](UnifiedSubscriptionManagementApi.md#updatesubscriptionbuttontextapiv1subscriptionupdatebuttontextentitytypeentityidpost) | **POST** /api/v1/subscription/update-button-text/{entity_type}/{entity_id} | Update Subscription Button Text


# **checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPost**
> Object checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPost(entityType, entityId)

Check Subscription Active

Quick check if an entity has an active subscription.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     Boolean indicating if subscription is active

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedSubscriptionManagementApi();
final entityType = ; // EntityType | 
final entityId = entityId_example; // String | 

try {
    final result = api_instance.checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPost(entityType, entityId);
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionManagementApi->checkSubscriptionActiveApiV1SubscriptionCheckActiveEntityTypeEntityIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)|  | 
 **entityId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDynamicSubscriptionSessionApiV1SubscriptionDynamicPost**
> DynamicSubscriptionResponse createDynamicSubscriptionSessionApiV1SubscriptionDynamicPost(dynamicSubscriptionRequest)

Create Dynamic Subscription Session

Intelligently create either a checkout or customer portal session based on existing subscriptions.  This endpoint mimics how ChatGPT and other modern subscription services work: - If user has active subscription: routes to customer portal (manage billing) - If user has no active subscription: routes to checkout (start/renew subscription)  The response includes button_text stored in the subscription record and updated via webhooks.  Args:     request: DynamicSubscriptionRequest containing entity details and URLs  Returns:     DynamicSubscriptionResponse with either checkout_url or portal_url and stored button_text

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedSubscriptionManagementApi();
final dynamicSubscriptionRequest = DynamicSubscriptionRequest(); // DynamicSubscriptionRequest | 

try {
    final result = api_instance.createDynamicSubscriptionSessionApiV1SubscriptionDynamicPost(dynamicSubscriptionRequest);
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionManagementApi->createDynamicSubscriptionSessionApiV1SubscriptionDynamicPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dynamicSubscriptionRequest** | [**DynamicSubscriptionRequest**](DynamicSubscriptionRequest.md)|  | 

### Return type

[**DynamicSubscriptionResponse**](DynamicSubscriptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGet**
> SubscriptionStatusResponse getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGet()

Get Current Entity Subscription Status

Get subscription status for the currently authenticated entity.  Returns:     SubscriptionStatusResponse with detailed status information including stored button_text

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UnifiedSubscriptionManagementApi();

try {
    final result = api_instance.getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGet();
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionManagementApi->getCurrentEntitySubscriptionStatusApiV1SubscriptionStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubscriptionStatusResponse**](SubscriptionStatusResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGet**
> SubscriptionStatusResponse getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGet(entityType, entityId)

Get Subscription Status

Get comprehensive subscription status for any entity.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     SubscriptionStatusResponse with detailed status information including stored button_text

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedSubscriptionManagementApi();
final entityType = ; // EntityType | 
final entityId = entityId_example; // String | 

try {
    final result = api_instance.getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGet(entityType, entityId);
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionManagementApi->getSubscriptionStatusApiV1SubscriptionStatusEntityTypeEntityIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)|  | 
 **entityId** | **String**|  | 

### Return type

[**SubscriptionStatusResponse**](SubscriptionStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPost**
> Object updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPost(entityType, entityId)

Update Subscription Button Text

Update the stored button text for a subscription. Useful for manual refreshes or testing.  Args:     entity_type: USER or VENDOR     entity_id: The entity ID  Returns:     Updated button text

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UnifiedSubscriptionManagementApi();
final entityType = ; // EntityType | 
final entityId = entityId_example; // String | 

try {
    final result = api_instance.updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPost(entityType, entityId);
    print(result);
} catch (e) {
    print('Exception when calling UnifiedSubscriptionManagementApi->updateSubscriptionButtonTextApiV1SubscriptionUpdateButtonTextEntityTypeEntityIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)|  | 
 **entityId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

