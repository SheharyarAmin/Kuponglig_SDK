//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoreApi {
  StoreApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Store
  ///
  /// Endpoint to create a new store. - Takes StoreModel as input. - Creates and returns the new store in the Firestore.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StoreModel] storeModel (required):
  Future<Response> createStoreApiV1StoreStoresPostWithHttpInfo(StoreModel storeModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores';

    // ignore: prefer_final_locals
    Object? postBody = storeModel;

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

  /// Create Store
  ///
  /// Endpoint to create a new store. - Takes StoreModel as input. - Creates and returns the new store in the Firestore.
  ///
  /// Parameters:
  ///
  /// * [StoreModel] storeModel (required):
  Future<StoreModel?> createStoreApiV1StoreStoresPost(StoreModel storeModel,) async {
    final response = await createStoreApiV1StoreStoresPostWithHttpInfo(storeModel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreModel',) as StoreModel;
    
    }
    return null;
  }

  /// Delete Store
  ///
  /// Endpoint to delete a store. - Deletes store and associated assets (logo, images) from the Firestore.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> deleteStoreApiV1StoreStoresStoreIdDeleteWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores/{store_id}'
      .replaceAll('{store_id}', storeId);

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

  /// Delete Store
  ///
  /// Endpoint to delete a store. - Deletes store and associated assets (logo, images) from the Firestore.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Object?> deleteStoreApiV1StoreStoresStoreIdDelete(String storeId,) async {
    final response = await deleteStoreApiV1StoreStoresStoreIdDeleteWithHttpInfo(storeId,);
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

  /// Get First Store By Vendor
  ///
  /// Endpoint to fetch the first store for a specific vendor. - Returns the first store belonging to the given vendor.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> getFirstStoreByVendorApiV1StoreStoresVendorFirstGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores/vendor/first';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vendor_id', vendorId));

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

  /// Get First Store By Vendor
  ///
  /// Endpoint to fetch the first store for a specific vendor. - Returns the first store belonging to the given vendor.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<StoreModel?> getFirstStoreByVendorApiV1StoreStoresVendorFirstGet(String vendorId,) async {
    final response = await getFirstStoreByVendorApiV1StoreStoresVendorFirstGetWithHttpInfo(vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreModel',) as StoreModel;
    
    }
    return null;
  }

  /// Get Nearby Stores
  ///
  /// Endpoint to fetch stores near given coordinates within a specified radius. - `lat`: Latitude of the location. - `lon`: Longitude of the location. - `radius`: Radius in kilometers to search for stores. - Returns a list of nearby stores.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] lat (required):
  ///
  /// * [num] lon (required):
  ///
  /// * [num] radius (required):
  Future<Response> getNearbyStoresApiV1StoreStoresNearbyGetWithHttpInfo(num lat, num lon, num radius,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores/nearby';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'lat', lat));
      queryParams.addAll(_queryParams('', 'lon', lon));
      queryParams.addAll(_queryParams('', 'radius', radius));

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

  /// Get Nearby Stores
  ///
  /// Endpoint to fetch stores near given coordinates within a specified radius. - `lat`: Latitude of the location. - `lon`: Longitude of the location. - `radius`: Radius in kilometers to search for stores. - Returns a list of nearby stores.
  ///
  /// Parameters:
  ///
  /// * [num] lat (required):
  ///
  /// * [num] lon (required):
  ///
  /// * [num] radius (required):
  Future<List<StoreModel>?> getNearbyStoresApiV1StoreStoresNearbyGet(num lat, num lon, num radius,) async {
    final response = await getNearbyStoresApiV1StoreStoresNearbyGetWithHttpInfo(lat, lon, radius,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoreModel>') as List)
        .cast<StoreModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Store
  ///
  /// Endpoint to retrieve a store by its ID. - Fetches store data based on store_id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<Response> getStoreApiV1StoreStoresStoreIdGetWithHttpInfo(String storeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores/{store_id}'
      .replaceAll('{store_id}', storeId);

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

  /// Get Store
  ///
  /// Endpoint to retrieve a store by its ID. - Fetches store data based on store_id.
  ///
  /// Parameters:
  ///
  /// * [String] storeId (required):
  Future<StoreModel?> getStoreApiV1StoreStoresStoreIdGet(String storeId,) async {
    final response = await getStoreApiV1StoreStoresStoreIdGetWithHttpInfo(storeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreModel',) as StoreModel;
    
    }
    return null;
  }

  /// Get Stores By Vendor
  ///
  /// Endpoint to fetch all stores for a vendor. - Returns a list of stores for the given vendor ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<Response> getStoresByVendorApiV1StoreStoresVendorVendorIdGetWithHttpInfo(String vendorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores/vendor/{vendor_id}'
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

  /// Get Stores By Vendor
  ///
  /// Endpoint to fetch all stores for a vendor. - Returns a list of stores for the given vendor ID.
  ///
  /// Parameters:
  ///
  /// * [String] vendorId (required):
  Future<List<StoreModel>?> getStoresByVendorApiV1StoreStoresVendorVendorIdGet(String vendorId,) async {
    final response = await getStoresByVendorApiV1StoreStoresVendorVendorIdGetWithHttpInfo(vendorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoreModel>') as List)
        .cast<StoreModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Store
  ///
  /// Endpoint to update an existing store. - Takes StoreModel as input. - Updates the store data in the Firestore.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StoreModel] storeModel (required):
  Future<Response> updateStoreApiV1StoreStoresPutWithHttpInfo(StoreModel storeModel,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/store/stores';

    // ignore: prefer_final_locals
    Object? postBody = storeModel;

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

  /// Update Store
  ///
  /// Endpoint to update an existing store. - Takes StoreModel as input. - Updates the store data in the Firestore.
  ///
  /// Parameters:
  ///
  /// * [StoreModel] storeModel (required):
  Future<StoreModel?> updateStoreApiV1StoreStoresPut(StoreModel storeModel,) async {
    final response = await updateStoreApiV1StoreStoresPutWithHttpInfo(storeModel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreModel',) as StoreModel;
    
    }
    return null;
  }
}
