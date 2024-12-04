//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/coupon_api.dart';
part 'api/default_api.dart';
part 'api/redeemed_coupons_api.dart';
part 'api/saved_coupons_api.dart';
part 'api/spin_wheel_api.dart';
part 'api/store_api.dart';
part 'api/user_api.dart';
part 'api/user_points_api.dart';
part 'api/vendor_api.dart';
part 'api/won_coupons_api.dart';

part 'model/authentication_token.dart';
part 'model/coupon_model.dart';
part 'model/coupon_status.dart';
part 'model/coupon_target_type.dart';
part 'model/gender.dart';
part 'model/geo_point.dart';
part 'model/http_validation_error.dart';
part 'model/id_response.dart';
part 'model/interests.dart';
part 'model/platform.dart';
part 'model/reward_type.dart';
part 'model/save_coupon_request.dart';
part 'model/spin_wheel_response.dart';
part 'model/spinning_wheel_reward.dart';
part 'model/store_model.dart';
part 'model/store_model_base.dart';
part 'model/store_stats_model.dart';
part 'model/store_status.dart';
part 'model/store_types.dart';
part 'model/token.dart';
part 'model/user_model.dart';
part 'model/user_model_from_client.dart';
part 'model/user_points_transaction_model.dart';
part 'model/user_status.dart';
part 'model/validation_error.dart';
part 'model/validation_error_loc_inner.dart';
part 'model/vendor_model.dart';
part 'model/vendor_status.dart';
part 'model/won_coupon_model.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
