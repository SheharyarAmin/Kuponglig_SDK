# openapi.api.ContactFormApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteFormApiV1ContactFormIdDelete**](ContactFormApi.md#deleteformapiv1contactformiddelete) | **DELETE** /api/v1/contact/{form_id} | Delete Form
[**getContactFormApiV1ContactFormIdGet**](ContactFormApi.md#getcontactformapiv1contactformidget) | **GET** /api/v1/contact/{form_id} | Get Contact Form
[**listContactFormsApiV1ContactListGet**](ContactFormApi.md#listcontactformsapiv1contactlistget) | **GET** /api/v1/contact/list | List Contact Forms
[**submitContactFormApiV1ContactSubmitPost**](ContactFormApi.md#submitcontactformapiv1contactsubmitpost) | **POST** /api/v1/contact/submit | Submit Contact Form
[**updateFormStatusApiV1ContactFormIdStatusPut**](ContactFormApi.md#updateformstatusapiv1contactformidstatusput) | **PUT** /api/v1/contact/{form_id}/status | Update Form Status


# **deleteFormApiV1ContactFormIdDelete**
> Object deleteFormApiV1ContactFormIdDelete(formId)

Delete Form

Delete a contact form submission.  This endpoint is primarily for admin use to delete contact form submissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactFormApi();
final formId = formId_example; // String | 

try {
    final result = api_instance.deleteFormApiV1ContactFormIdDelete(formId);
    print(result);
} catch (e) {
    print('Exception when calling ContactFormApi->deleteFormApiV1ContactFormIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContactFormApiV1ContactFormIdGet**
> ContactFormDetail getContactFormApiV1ContactFormIdGet(formId)

Get Contact Form

Get details of a specific contact form submission.  This endpoint is primarily for admin use to view contact form details.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactFormApi();
final formId = formId_example; // String | 

try {
    final result = api_instance.getContactFormApiV1ContactFormIdGet(formId);
    print(result);
} catch (e) {
    print('Exception when calling ContactFormApi->getContactFormApiV1ContactFormIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formId** | **String**|  | 

### Return type

[**ContactFormDetail**](ContactFormDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactFormsApiV1ContactListGet**
> ContactFormList listContactFormsApiV1ContactListGet(limit, offset, typeFilter, status, userId, vendorId)

List Contact Forms

List contact form submissions with optional filtering.  This endpoint is primarily for admin use to manage contact form submissions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactFormApi();
final limit = 56; // int | 
final offset = 56; // int | 
final typeFilter = ; // ContactFormType | 
final status = ; // ContactFormStatus | 
final userId = userId_example; // String | 
final vendorId = vendorId_example; // String | 

try {
    final result = api_instance.listContactFormsApiV1ContactListGet(limit, offset, typeFilter, status, userId, vendorId);
    print(result);
} catch (e) {
    print('Exception when calling ContactFormApi->listContactFormsApiV1ContactListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 100]
 **offset** | **int**|  | [optional] [default to 0]
 **typeFilter** | [**ContactFormType**](.md)|  | [optional] 
 **status** | [**ContactFormStatus**](.md)|  | [optional] 
 **userId** | **String**|  | [optional] 
 **vendorId** | **String**|  | [optional] 

### Return type

[**ContactFormList**](ContactFormList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitContactFormApiV1ContactSubmitPost**
> ContactFormResponse submitContactFormApiV1ContactSubmitPost(contactFormSubmission)

Submit Contact Form

Submit a contact form.  This endpoint allows users and vendors to submit contact forms.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactFormApi();
final contactFormSubmission = ContactFormSubmission(); // ContactFormSubmission | 

try {
    final result = api_instance.submitContactFormApiV1ContactSubmitPost(contactFormSubmission);
    print(result);
} catch (e) {
    print('Exception when calling ContactFormApi->submitContactFormApiV1ContactSubmitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactFormSubmission** | [**ContactFormSubmission**](ContactFormSubmission.md)|  | 

### Return type

[**ContactFormResponse**](ContactFormResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFormStatusApiV1ContactFormIdStatusPut**
> ContactFormDetail updateFormStatusApiV1ContactFormIdStatusPut(formId, status)

Update Form Status

Update the status of a contact form submission.  This endpoint is primarily for admin use to manage contact form statuses.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContactFormApi();
final formId = formId_example; // String | 
final status = ; // ContactFormStatus | 

try {
    final result = api_instance.updateFormStatusApiV1ContactFormIdStatusPut(formId, status);
    print(result);
} catch (e) {
    print('Exception when calling ContactFormApi->updateFormStatusApiV1ContactFormIdStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formId** | **String**|  | 
 **status** | [**ContactFormStatus**](.md)|  | 

### Return type

[**ContactFormDetail**](ContactFormDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

