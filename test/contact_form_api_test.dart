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


/// tests for ContactFormApi
void main() {
  // final instance = ContactFormApi();

  group('tests for ContactFormApi', () {
    // Delete Form
    //
    // Delete a contact form submission.  This endpoint is primarily for admin use to delete contact form submissions.
    //
    //Future<Object> deleteFormApiV1ContactFormIdDelete(String formId) async
    test('test deleteFormApiV1ContactFormIdDelete', () async {
      // TODO
    });

    // Get Contact Form
    //
    // Get details of a specific contact form submission.  This endpoint is primarily for admin use to view contact form details.
    //
    //Future<ContactFormDetail> getContactFormApiV1ContactFormIdGet(String formId) async
    test('test getContactFormApiV1ContactFormIdGet', () async {
      // TODO
    });

    // List Contact Forms
    //
    // List contact form submissions with optional filtering.  This endpoint is primarily for admin use to manage contact form submissions.
    //
    //Future<ContactFormList> listContactFormsApiV1ContactListGet({ int limit, int offset, ContactFormType typeFilter, ContactFormStatus status, String userId, String vendorId }) async
    test('test listContactFormsApiV1ContactListGet', () async {
      // TODO
    });

    // Submit Contact Form
    //
    // Submit a contact form.  This endpoint allows users and vendors to submit contact forms.
    //
    //Future<ContactFormResponse> submitContactFormApiV1ContactSubmitPost(ContactFormSubmission contactFormSubmission) async
    test('test submitContactFormApiV1ContactSubmitPost', () async {
      // TODO
    });

    // Update Form Status
    //
    // Update the status of a contact form submission.  This endpoint is primarily for admin use to manage contact form statuses.
    //
    //Future<ContactFormDetail> updateFormStatusApiV1ContactFormIdStatusPut(String formId, ContactFormStatus status) async
    test('test updateFormStatusApiV1ContactFormIdStatusPut', () async {
      // TODO
    });

  });
}
