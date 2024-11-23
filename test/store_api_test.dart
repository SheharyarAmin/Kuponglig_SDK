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


/// tests for StoreApi
void main() {
  // final instance = StoreApi();

  group('tests for StoreApi', () {
    // Create Store
    //
    // Endpoint to create a new store. - Takes StoreModel as input. - Creates and returns the new store in the Firestore.
    //
    //Future<StoreModel> createStoreApiV1StoreStoresPost(StoreModel storeModel) async
    test('test createStoreApiV1StoreStoresPost', () async {
      // TODO
    });

    // Delete Store
    //
    // Endpoint to delete a store. - Deletes store and associated assets (logo, images) from the Firestore.
    //
    //Future<Object> deleteStoreApiV1StoreStoresStoreIdDelete(String storeId) async
    test('test deleteStoreApiV1StoreStoresStoreIdDelete', () async {
      // TODO
    });

    // Get First Store By Vendor
    //
    // Endpoint to fetch the first store for a specific vendor. - Returns the first store belonging to the given vendor.
    //
    //Future<StoreModel> getFirstStoreByVendorApiV1StoreStoresVendorFirstGet(String vendorId) async
    test('test getFirstStoreByVendorApiV1StoreStoresVendorFirstGet', () async {
      // TODO
    });

    // Get Nearby Stores
    //
    // Endpoint to fetch stores near given coordinates within a specified radius. - `lat`: Latitude of the location. - `lon`: Longitude of the location. - `radius`: Radius in kilometers to search for stores. - Returns a list of nearby stores.
    //
    //Future<List<StoreModel>> getNearbyStoresApiV1StoreStoresNearbyGet(num lat, num lon, num radius) async
    test('test getNearbyStoresApiV1StoreStoresNearbyGet', () async {
      // TODO
    });

    // Get Store
    //
    // Endpoint to retrieve a store by its ID. - Fetches store data based on store_id.
    //
    //Future<StoreModel> getStoreApiV1StoreStoresStoreIdGet(String storeId) async
    test('test getStoreApiV1StoreStoresStoreIdGet', () async {
      // TODO
    });

    // Get Stores By Vendor
    //
    // Endpoint to fetch all stores for a vendor. - Returns a list of stores for the given vendor ID.
    //
    //Future<List<StoreModel>> getStoresByVendorApiV1StoreStoresVendorVendorIdGet(String vendorId) async
    test('test getStoresByVendorApiV1StoreStoresVendorVendorIdGet', () async {
      // TODO
    });

    // Update Store
    //
    // Endpoint to update an existing store. - Takes StoreModel as input. - Updates the store data in the Firestore.
    //
    //Future<StoreModel> updateStoreApiV1StoreStoresPut(StoreModel storeModel) async
    test('test updateStoreApiV1StoreStoresPut', () async {
      // TODO
    });

  });
}
