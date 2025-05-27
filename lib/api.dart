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

part 'api/account_deletion_api.dart';
part 'api/analytics_api.dart';
part 'api/contact_form_api.dart';
part 'api/coupon_api.dart';
part 'api/default_api.dart';
part 'api/notifications_api.dart';
part 'api/redeemed_coupons_api.dart';
part 'api/saved_coupons_api.dart';
part 'api/spin_wheel_api.dart';
part 'api/store_api.dart';
part 'api/store_reviews_api.dart';
part 'api/stripe_webhook_api.dart';
part 'api/unified_stripe_webhook_api.dart';
part 'api/unified_subscription_management_api.dart';
part 'api/unified_subscription_webhook_api.dart';
part 'api/unlocked_coupons_api.dart';
part 'api/user_api.dart';
part 'api/user_points_api.dart';
part 'api/user_screen_notifications_api.dart';
part 'api/user_subscription_api.dart';
part 'api/vendor_api.dart';
part 'api/vendor_dashboard_api.dart';
part 'api/vendor_screen_notifications_api.dart';
part 'api/vendor_stripe_webhook_api.dart';
part 'api/won_coupons_api.dart';

part 'model/activity_metrics.dart';
part 'model/analytics_event.dart';
part 'model/analytics_event_batch.dart';
part 'model/analytics_event_type.dart';
part 'model/authentication_token.dart';
part 'model/broadcast_notification_response.dart';
part 'model/contact_form_detail.dart';
part 'model/contact_form_list.dart';
part 'model/contact_form_list_item.dart';
part 'model/contact_form_response.dart';
part 'model/contact_form_status.dart';
part 'model/contact_form_submission.dart';
part 'model/contact_form_type.dart';
part 'model/core_stats.dart';
part 'model/coupon_details.dart';
part 'model/coupon_model.dart';
part 'model/coupon_performance.dart';
part 'model/coupon_redemption_response.dart';
part 'model/coupon_redemption_status.dart';
part 'model/coupon_status.dart';
part 'model/coupon_subscription_status.dart';
part 'model/coupon_target_type.dart';
part 'model/create_user_subscription_session.dart';
part 'model/dashboard_request.dart';
part 'model/dashboard_response.dart';
part 'model/deletion_request_model.dart';
part 'model/deletion_request_status.dart';
part 'model/deletion_request_type.dart';
part 'model/device_type.dart';
part 'model/dynamic_subscription_request.dart';
part 'model/dynamic_subscription_response.dart';
part 'model/entity_type.dart';
part 'model/fcm_token_create.dart';
part 'model/gender.dart';
part 'model/geo_point.dart';
part 'model/http_validation_error.dart';
part 'model/hourly_activity_data.dart';
part 'model/hourly_metric_data.dart';
part 'model/id_response.dart';
part 'model/inactive_reason.dart';
part 'model/interests.dart';
part 'model/metric_sort_by.dart';
part 'model/notification_action_response.dart';
part 'model/notification_base.dart';
part 'model/notification_category.dart';
part 'model/notification_create.dart';
part 'model/notification_db.dart';
part 'model/notification_refresh_response.dart';
part 'model/notification_request.dart';
part 'model/notification_send_response.dart';
part 'model/notification_severity.dart';
part 'model/notification_status.dart';
part 'model/notification_target.dart';
part 'model/notification_type.dart';
part 'model/performance_details.dart';
part 'model/platform.dart';
part 'model/rating_value.dart';
part 'model/reward_type.dart';
part 'model/save_coupon_request.dart';
part 'model/screen_notification_item.dart';
part 'model/screen_notifications_response.dart';
part 'model/session_response.dart';
part 'model/spin_wheel_response.dart';
part 'model/spinning_wheel_reward.dart';
part 'model/store_details.dart';
part 'model/store_model.dart';
part 'model/store_model_base.dart';
part 'model/store_review_create.dart';
part 'model/store_review_model.dart';
part 'model/store_review_response.dart';
part 'model/store_review_stats.dart';
part 'model/store_status.dart';
part 'model/store_types.dart';
part 'model/subscription_status.dart';
part 'model/subscription_status_response.dart';
part 'model/success_response.dart';
part 'model/time_frame.dart';
part 'model/token.dart';
part 'model/token_registration_response.dart';
part 'model/unlock_status.dart';
part 'model/unlocked_coupon_model.dart';
part 'model/unlocked_coupon_response.dart';
part 'model/user_broadcast_notification_request.dart';
part 'model/user_model.dart';
part 'model/user_model_from_client.dart';
part 'model/user_notification.dart';
part 'model/user_points_transaction_model.dart';
part 'model/user_redeemed_coupon_response.dart';
part 'model/user_redeemed_coupons_list_response.dart';
part 'model/user_screen.dart';
part 'model/user_status.dart';
part 'model/user_subscription_model.dart';
part 'model/user_type.dart';
part 'model/validation_error.dart';
part 'model/validation_error_loc_inner.dart';
part 'model/vendor_broadcast_notification_request.dart';
part 'model/vendor_model.dart';
part 'model/vendor_screen.dart';
part 'model/vendor_status.dart';
part 'model/won_coupon_model.dart';
part 'model/won_coupon_status.dart';


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
