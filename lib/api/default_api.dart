//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Login For Access Token
  ///
  /// Endpoint to login and get an access token.  Args:     request (AuthenticationToken): The request body containing the ID token.  Returns:     Token: The access token and token type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthenticationToken] authenticationToken (required):
  Future<Response> loginForAccessTokenAuthTokenPostWithHttpInfo(AuthenticationToken authenticationToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/token';

    // ignore: prefer_final_locals
    Object? postBody = authenticationToken;

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

  /// Login For Access Token
  ///
  /// Endpoint to login and get an access token.  Args:     request (AuthenticationToken): The request body containing the ID token.  Returns:     Token: The access token and token type.
  ///
  /// Parameters:
  ///
  /// * [AuthenticationToken] authenticationToken (required):
  Future<Token?> loginForAccessTokenAuthTokenPost(AuthenticationToken authenticationToken,) async {
    final response = await loginForAccessTokenAuthTokenPostWithHttpInfo(authenticationToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Token',) as Token;
    
    }
    return null;
  }

  /// Ping
  ///
  /// Endpoint to check if the server is running.  Returns:     dict: A message indicating that the server is running.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> pingAuthPingGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/ping';

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

  /// Ping
  ///
  /// Endpoint to check if the server is running.  Returns:     dict: A message indicating that the server is running.
  Future<Object?> pingAuthPingGet() async {
    final response = await pingAuthPingGetWithHttpInfo();
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

  /// Refresh Access Token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] refreshToken (required):
  Future<Response> refreshAccessTokenAuthRefreshPostWithHttpInfo(String refreshToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/refresh';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'refresh_token', refreshToken));

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

  /// Refresh Access Token
  ///
  /// Parameters:
  ///
  /// * [String] refreshToken (required):
  Future<Token?> refreshAccessTokenAuthRefreshPost(String refreshToken,) async {
    final response = await refreshAccessTokenAuthRefreshPostWithHttpInfo(refreshToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Token',) as Token;
    
    }
    return null;
  }
}
