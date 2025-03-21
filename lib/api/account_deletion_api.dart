//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountDeletionApi {
  AccountDeletionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Deletion Status
  ///
  /// Get the status of a deletion request
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  Future<Response> getDeletionStatusApiV1DeletionDeletionRequestRequestIdGetWithHttpInfo(String requestId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/deletion/deletion-request/{request_id}'
      .replaceAll('{request_id}', requestId);

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

  /// Get Deletion Status
  ///
  /// Get the status of a deletion request
  ///
  /// Parameters:
  ///
  /// * [String] requestId (required):
  Future<DeletionRequestModel?> getDeletionStatusApiV1DeletionDeletionRequestRequestIdGet(String requestId,) async {
    final response = await getDeletionStatusApiV1DeletionDeletionRequestRequestIdGetWithHttpInfo(requestId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletionRequestModel',) as DeletionRequestModel;
    
    }
    return null;
  }

  /// Request User Deletion
  ///
  /// Request deletion of a user account and all associated data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPostWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/deletion/request-user-deletion/{user_id}'
      .replaceAll('{user_id}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Request User Deletion
  ///
  /// Request deletion of a user account and all associated data
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<DeletionRequestModel?> requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPost(String userId,) async {
    final response = await requestUserDeletionApiV1DeletionRequestUserDeletionUserIdPostWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletionRequestModel',) as DeletionRequestModel;
    
    }
    return null;
  }

  /// Request Vendor Deletion
  ///
  /// Request deletion of a vendor account and all associated data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPostWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/deletion/request-vendor-deletion/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Request Vendor Deletion
  ///
  /// Request deletion of a vendor account and all associated data
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<DeletionRequestModel?> requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPost(String vendorId,) async {
    final response = await requestVendorDeletionApiV1DeletionRequestVendorDeletionVendorIdPostWithHttpInfo(vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletionRequestModel',) as DeletionRequestModel;
    
    }
    return null;
  }
}
