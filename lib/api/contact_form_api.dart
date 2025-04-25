//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContactFormApi {
  ContactFormApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Form
  ///
  /// Delete a contact form submission.  This endpoint is primarily for admin use to delete contact form submissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  Future<Response> deleteFormApiV1ContactFormIdDeleteWithHttpInfo(String formId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/contact/{form_id}'
      .replaceAll('{form_id}', formId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Form
  ///
  /// Delete a contact form submission.  This endpoint is primarily for admin use to delete contact form submissions.
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  Future<Object?> deleteFormApiV1ContactFormIdDelete(String formId,) async {
    final response = await deleteFormApiV1ContactFormIdDeleteWithHttpInfo(formId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get Contact Form
  ///
  /// Get details of a specific contact form submission.  This endpoint is primarily for admin use to view contact form details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  Future<Response> getContactFormApiV1ContactFormIdGetWithHttpInfo(String formId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/contact/{form_id}'
      .replaceAll('{form_id}', formId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Contact Form
  ///
  /// Get details of a specific contact form submission.  This endpoint is primarily for admin use to view contact form details.
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  Future<ContactFormDetail?> getContactFormApiV1ContactFormIdGet(String formId,) async {
    final response = await getContactFormApiV1ContactFormIdGetWithHttpInfo(formId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactFormDetail',) as ContactFormDetail;
    
    }
    return null;
  }

  /// List Contact Forms
  ///
  /// List contact form submissions with optional filtering.  This endpoint is primarily for admin use to manage contact form submissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [ContactFormType] typeFilter:
  ///
  /// * [ContactFormStatus] status:
  ///
  /// * [String] userId:
  ///
  /// * [String] vendorId:
  Future<Response> listContactFormsApiV1ContactListGetWithHttpInfo({ int? limit, int? offset, ContactFormType? typeFilter, ContactFormStatus? status, String? userId, String? vendorId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/contact/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (typeFilter != null) {
      queryParams.addAll(_queryParams('', 'type_filter', typeFilter));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (vendorId != null) {
      queryParams.addAll(_queryParams('', 'vendor_id', vendorId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Contact Forms
  ///
  /// List contact form submissions with optional filtering.  This endpoint is primarily for admin use to manage contact form submissions.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [ContactFormType] typeFilter:
  ///
  /// * [ContactFormStatus] status:
  ///
  /// * [String] userId:
  ///
  /// * [String] vendorId:
  Future<ContactFormList?> listContactFormsApiV1ContactListGet({ int? limit, int? offset, ContactFormType? typeFilter, ContactFormStatus? status, String? userId, String? vendorId, }) async {
    final response = await listContactFormsApiV1ContactListGetWithHttpInfo( limit: limit, offset: offset, typeFilter: typeFilter, status: status, userId: userId, vendorId: vendorId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactFormList',) as ContactFormList;
    
    }
    return null;
  }

  /// Submit Contact Form
  ///
  /// Submit a contact form.  This endpoint allows users and vendors to submit contact forms.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContactFormSubmission] contactFormSubmission (required):
  Future<Response> submitContactFormApiV1ContactSubmitPostWithHttpInfo(ContactFormSubmission contactFormSubmission,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/contact/submit';

    // ignore: prefer_final_locals
    Object? postBody = contactFormSubmission;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Submit Contact Form
  ///
  /// Submit a contact form.  This endpoint allows users and vendors to submit contact forms.
  ///
  /// Parameters:
  ///
  /// * [ContactFormSubmission] contactFormSubmission (required):
  Future<ContactFormResponse?> submitContactFormApiV1ContactSubmitPost(ContactFormSubmission contactFormSubmission,) async {
    final response = await submitContactFormApiV1ContactSubmitPostWithHttpInfo(contactFormSubmission,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactFormResponse',) as ContactFormResponse;
    
    }
    return null;
  }

  /// Update Form Status
  ///
  /// Update the status of a contact form submission.  This endpoint is primarily for admin use to manage contact form statuses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  ///
  /// * [ContactFormStatus] status (required):
  Future<Response> updateFormStatusApiV1ContactFormIdStatusPutWithHttpInfo(String formId, ContactFormStatus status,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/contact/{form_id}/status'
      .replaceAll('{form_id}', formId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'status', status));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Form Status
  ///
  /// Update the status of a contact form submission.  This endpoint is primarily for admin use to manage contact form statuses.
  ///
  /// Parameters:
  ///
  /// * [String] formId (required):
  ///
  /// * [ContactFormStatus] status (required):
  Future<ContactFormDetail?> updateFormStatusApiV1ContactFormIdStatusPut(String formId, ContactFormStatus status,) async {
    final response = await updateFormStatusApiV1ContactFormIdStatusPutWithHttpInfo(formId, status,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactFormDetail',) as ContactFormDetail;
    
    }
    return null;
  }
}
