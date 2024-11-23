//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VendorApi {
  VendorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Vendor
  ///
  /// Endpoint to delete vendor data from Firestore. Calls the `delete_vendor_data` function from CRUD operations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> deleteVendorApiV1VendorVendorsVendorIdDeleteWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/vendors/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId);

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

  /// Delete Vendor
  ///
  /// Endpoint to delete vendor data from Firestore. Calls the `delete_vendor_data` function from CRUD operations.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Object?> deleteVendorApiV1VendorVendorsVendorIdDelete(String vendorId,) async {
    final response = await deleteVendorApiV1VendorVendorsVendorIdDeleteWithHttpInfo(vendorId,);
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

  /// Get Vendor
  ///
  /// Endpoint to retrieve vendor data from Firestore by vendor_id. Calls the `get_vendor_data` function from CRUD operations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> getVendorApiV1VendorVendorsVendorIdGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/vendors/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId);

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

  /// Get Vendor
  ///
  /// Endpoint to retrieve vendor data from Firestore by vendor_id. Calls the `get_vendor_data` function from CRUD operations.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<VendorModel?> getVendorApiV1VendorVendorsVendorIdGet(String vendorId,) async {
    final response = await getVendorApiV1VendorVendorsVendorIdGetWithHttpInfo(vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VendorModel',) as VendorModel;
    
    }
    return null;
  }

  /// Save Vendor
  ///
  /// Endpoint to save vendor data to Firestore. Calls the `save_vendor_data` function from CRUD operations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VendorModel] vendorModel (required):
  Future<Response> saveVendorApiV1VendorVendorsPostWithHttpInfo(VendorModel vendorModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/vendors';

    // ignore: prefer_final_locals
    Object? postBody = vendorModel;

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

  /// Save Vendor
  ///
  /// Endpoint to save vendor data to Firestore. Calls the `save_vendor_data` function from CRUD operations.
  ///
  /// Parameters:
  ///
  /// * [VendorModel] vendorModel (required):
  Future<VendorModel?> saveVendorApiV1VendorVendorsPost(VendorModel vendorModel,) async {
    final response = await saveVendorApiV1VendorVendorsPostWithHttpInfo(vendorModel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VendorModel',) as VendorModel;
    
    }
    return null;
  }

  /// Update Vendor
  ///
  /// Endpoint to update vendor data. Calls the `update_vendor_data` function from CRUD operations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///
  /// * [VendorModel] vendorModel (required):
  Future<Response> updateVendorApiV1VendorVendorsVendorIdPutWithHttpInfo(String vendorId, VendorModel vendorModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/vendors/{vendor_id}'
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody = vendorModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update Vendor
  ///
  /// Endpoint to update vendor data. Calls the `update_vendor_data` function from CRUD operations.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///
  /// * [VendorModel] vendorModel (required):
  Future<VendorModel?> updateVendorApiV1VendorVendorsVendorIdPut(String vendorId, VendorModel vendorModel,) async {
    final response = await updateVendorApiV1VendorVendorsVendorIdPutWithHttpInfo(vendorId, vendorModel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VendorModel',) as VendorModel;
    
    }
    return null;
  }

  /// Upload Vendor Id Card
  ///
  /// Endpoint to upload a vendor's ID card to Firebase Storage. Calls the `upload_vendor_id_card` function from CRUD operations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///
  /// * [MultipartFile] file (required):
  Future<Response> uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPostWithHttpInfo(String vendorId, MultipartFile file,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/vendor/vendors/{vendor_id}/upload-id-card'
      .replaceAll('{vendor_id}', vendorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload Vendor Id Card
  ///
  /// Endpoint to upload a vendor's ID card to Firebase Storage. Calls the `upload_vendor_id_card` function from CRUD operations.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  ///
  /// * [MultipartFile] file (required):
  Future<Object?> uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPost(String vendorId, MultipartFile file,) async {
    final response = await uploadVendorIdCardApiV1VendorVendorsVendorIdUploadIdCardPostWithHttpInfo(vendorId, file,);
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
}
