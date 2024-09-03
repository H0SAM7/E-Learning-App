// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Log_in": MessageLookupByLibrary.simpleMessage("Login"),
        "already_exists": MessageLookupByLibrary.simpleMessage(
            "Document already exists in Firestore."),
        "auth_success":
            MessageLookupByLibrary.simpleMessage("Successfully logged in"),
        "check_inbox": MessageLookupByLibrary.simpleMessage(
            "Please Go to Your Email Inbox,\n and click on the link for verification"),
        "create_new_acc":
            MessageLookupByLibrary.simpleMessage("Create New Account"),
        "deadline_exceeded": MessageLookupByLibrary.simpleMessage(
            "Firestore operation timed out."),
        "document_not_found": MessageLookupByLibrary.simpleMessage(
            "Document not found in Firestore."),
        "email": MessageLookupByLibrary.simpleMessage("email"),
        "email_already_in_use": MessageLookupByLibrary.simpleMessage(
            "The email is already in use."),
        "enter_email": MessageLookupByLibrary.simpleMessage("Enter your email"),
        "enter_father_phone":
            MessageLookupByLibrary.simpleMessage("Enter your Father Phone"),
        "enter_name": MessageLookupByLibrary.simpleMessage("Enter your Name"),
        "enter_password":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "enter_phone": MessageLookupByLibrary.simpleMessage("Enter your phone"),
        "error_title": MessageLookupByLibrary.simpleMessage("Error"),
        "father_phone": MessageLookupByLibrary.simpleMessage("father phone"),
        "forget_password":
            MessageLookupByLibrary.simpleMessage("Forget Password ?"),
        "have_account":
            MessageLookupByLibrary.simpleMessage("You have account?"),
        "invalid_email": MessageLookupByLibrary.simpleMessage(
            "The email address is not valid."),
        "learn_any_time":
            MessageLookupByLibrary.simpleMessage("Learn anytime and anywhere"),
        "name": MessageLookupByLibrary.simpleMessage("name"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "operation_aborted": MessageLookupByLibrary.simpleMessage(
            "Firestore operation was aborted."),
        "operation_not_allowed": MessageLookupByLibrary.simpleMessage(
            "This operation is not allowed."),
        "password": MessageLookupByLibrary.simpleMessage("password"),
        "permission_denied": MessageLookupByLibrary.simpleMessage(
            "Permission denied to access Firestore."),
        "phone": MessageLookupByLibrary.simpleMessage("phone"),
        "request_cancelled": MessageLookupByLibrary.simpleMessage(
            "Firestore request was cancelled."),
        "resource_exhausted": MessageLookupByLibrary.simpleMessage(
            "Firestore resource exhausted."),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "service_unavailable": MessageLookupByLibrary.simpleMessage(
            "Firestore service is currently unavailable."),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "sign_with_google":
            MessageLookupByLibrary.simpleMessage("Sign In With Google"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "unexpected_auth_error": MessageLookupByLibrary.simpleMessage(
            "An unexpected Firebase Auth error occurred."),
        "unexpected_firestore_error": MessageLookupByLibrary.simpleMessage(
            "An unexpected Firestore error occurred."),
        "unknown_firebase_error": MessageLookupByLibrary.simpleMessage(
            "An unknown Firebase error occurred."),
        "user_disabled": MessageLookupByLibrary.simpleMessage(
            "The user account has been disabled."),
        "user_not_found": MessageLookupByLibrary.simpleMessage(
            "No user found with this email."),
        "weak_password":
            MessageLookupByLibrary.simpleMessage("The password is too weak."),
        "wrong_password":
            MessageLookupByLibrary.simpleMessage("Incorrect password.")
      };
}
