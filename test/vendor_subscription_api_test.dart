//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for VendorSubscriptionApi
void main() {
  // final instance = VendorSubscriptionApi();

  group('tests for VendorSubscriptionApi', () {
    // Check Subscription Status
    //
    // Checks if a vendor has an active subscription.  Args:     vendor_id: The ID of the vendor.  Returns:     dict: Object containing the subscription status.
    //
    //Future<Object> checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet(String vendorId) async
    test('test checkSubscriptionStatusApiV1VendorSubscriptionVendorIdStatusGet', () async {
      // TODO
    });

    // Create Vendor Checkout Session
    //
    // Creates a checkout session for a vendor subscription.  Args:     payload: The session creation payload containing vendor ID, email, name, price ID, and optional setup intent ID.  Returns:     SessionResponse: Object containing payment information.
    //
    //Future<SessionResponse> createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost(CreateVendorSubscriptionSession createVendorSubscriptionSession) async
    test('test createVendorCheckoutSessionApiV1VendorSubscriptionCreateCheckoutSessionPost', () async {
      // TODO
    });

    // Get Vendor Subscription
    //
    // Gets subscription details for a vendor.  Args:     vendor_id: The ID of the vendor.  Returns:     VendorSubscriptionModel: The vendor's subscription details.  Raises:     HTTPException: If no subscription is found for the vendor.
    //
    //Future<VendorSubscriptionModel> getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet(String vendorId) async
    test('test getVendorSubscriptionApiV1VendorSubscriptionVendorIdGet', () async {
      // TODO
    });

  });
}
