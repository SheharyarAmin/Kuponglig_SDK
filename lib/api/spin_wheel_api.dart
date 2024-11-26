//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SpinWheelApi {
  SpinWheelApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Spin Wheel Config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<Response> getSpinWheelConfigApiV1SpinWheelConfigUserIdGetWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/spin_wheel/config/{user_id}'
      .replaceAll('{user_id}', userId);

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

  /// Get Spin Wheel Config
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  Future<SpinWheelResponse?> getSpinWheelConfigApiV1SpinWheelConfigUserIdGet(String userId,) async {
    final response = await getSpinWheelConfigApiV1SpinWheelConfigUserIdGetWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpinWheelResponse',) as SpinWheelResponse;
    
    }
    return null;
  }

  /// Process Spin Result
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SpinningWheelReward] spinningWheelReward (required):
  Future<Response> processSpinResultApiV1SpinWheelPostWithHttpInfo(SpinningWheelReward spinningWheelReward,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/spin_wheel/';

    // ignore: prefer_final_locals
    Object? postBody = spinningWheelReward;

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

  /// Process Spin Result
  ///
  /// Parameters:
  ///
  /// * [SpinningWheelReward] spinningWheelReward (required):
  Future<Object?> processSpinResultApiV1SpinWheelPost(SpinningWheelReward spinningWheelReward,) async {
    final response = await processSpinResultApiV1SpinWheelPostWithHttpInfo(spinningWheelReward,);
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
