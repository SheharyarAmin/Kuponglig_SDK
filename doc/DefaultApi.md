# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginForAccessTokenAuthTokenPost**](DefaultApi.md#loginforaccesstokenauthtokenpost) | **POST** /auth/token | Login For Access Token
[**pingAuthPingGet**](DefaultApi.md#pingauthpingget) | **GET** /auth/ping | Ping
[**refreshAccessTokenAuthRefreshPost**](DefaultApi.md#refreshaccesstokenauthrefreshpost) | **POST** /auth/refresh | Refresh Access Token


# **loginForAccessTokenAuthTokenPost**
> Token loginForAccessTokenAuthTokenPost(authenticationToken)

Login For Access Token

Endpoint to login and get an access token.  Args:     request (AuthenticationToken): The request body containing the ID token.  Returns:     Token: The access token and token type.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final authenticationToken = AuthenticationToken(); // AuthenticationToken | 

try {
    final result = api_instance.loginForAccessTokenAuthTokenPost(authenticationToken);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->loginForAccessTokenAuthTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticationToken** | [**AuthenticationToken**](AuthenticationToken.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pingAuthPingGet**
> Object pingAuthPingGet()

Ping

Endpoint to check if the server is running.  Returns:     dict: A message indicating that the server is running.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.pingAuthPingGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->pingAuthPingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshAccessTokenAuthRefreshPost**
> Token refreshAccessTokenAuthRefreshPost(refreshToken)

Refresh Access Token

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final refreshToken = refreshToken_example; // String | 

try {
    final result = api_instance.refreshAccessTokenAuthRefreshPost(refreshToken);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->refreshAccessTokenAuthRefreshPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

