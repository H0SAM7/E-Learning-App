// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The email address is not valid.`
  String get invalid_email {
    return Intl.message(
      'The email address is not valid.',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `The user account has been disabled.`
  String get user_disabled {
    return Intl.message(
      'The user account has been disabled.',
      name: 'user_disabled',
      desc: '',
      args: [],
    );
  }

  /// `No user found with this email.`
  String get user_not_found {
    return Intl.message(
      'No user found with this email.',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect password.`
  String get wrong_password {
    return Intl.message(
      'Incorrect password.',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `The email is already in use.`
  String get email_already_in_use {
    return Intl.message(
      'The email is already in use.',
      name: 'email_already_in_use',
      desc: '',
      args: [],
    );
  }

  /// `The password is too weak.`
  String get weak_password {
    return Intl.message(
      'The password is too weak.',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `This operation is not allowed.`
  String get operation_not_allowed {
    return Intl.message(
      'This operation is not allowed.',
      name: 'operation_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected Firebase Auth error occurred.`
  String get unexpected_auth_error {
    return Intl.message(
      'An unexpected Firebase Auth error occurred.',
      name: 'unexpected_auth_error',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied to access Firestore.`
  String get permission_denied {
    return Intl.message(
      'Permission denied to access Firestore.',
      name: 'permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `Document not found in Firestore.`
  String get document_not_found {
    return Intl.message(
      'Document not found in Firestore.',
      name: 'document_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Firestore operation was aborted.`
  String get operation_aborted {
    return Intl.message(
      'Firestore operation was aborted.',
      name: 'operation_aborted',
      desc: '',
      args: [],
    );
  }

  /// `Document already exists in Firestore.`
  String get already_exists {
    return Intl.message(
      'Document already exists in Firestore.',
      name: 'already_exists',
      desc: '',
      args: [],
    );
  }

  /// `Firestore resource exhausted.`
  String get resource_exhausted {
    return Intl.message(
      'Firestore resource exhausted.',
      name: 'resource_exhausted',
      desc: '',
      args: [],
    );
  }

  /// `Firestore service is currently unavailable.`
  String get service_unavailable {
    return Intl.message(
      'Firestore service is currently unavailable.',
      name: 'service_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Firestore operation timed out.`
  String get deadline_exceeded {
    return Intl.message(
      'Firestore operation timed out.',
      name: 'deadline_exceeded',
      desc: '',
      args: [],
    );
  }

  /// `Firestore request was cancelled.`
  String get request_cancelled {
    return Intl.message(
      'Firestore request was cancelled.',
      name: 'request_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected Firestore error occurred.`
  String get unexpected_firestore_error {
    return Intl.message(
      'An unexpected Firestore error occurred.',
      name: 'unexpected_firestore_error',
      desc: '',
      args: [],
    );
  }

  /// `An unknown Firebase error occurred.`
  String get unknown_firebase_error {
    return Intl.message(
      'An unknown Firebase error occurred.',
      name: 'unknown_firebase_error',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Name`
  String get enter_name {
    return Intl.message(
      'Enter your Name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enter_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone`
  String get enter_phone {
    return Intl.message(
      'Enter your phone',
      name: 'enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Father Phone`
  String get enter_father_phone {
    return Intl.message(
      'Enter your Father Phone',
      name: 'enter_father_phone',
      desc: '',
      args: [],
    );
  }

  /// `You have account?`
  String get have_account {
    return Intl.message(
      'You have account?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error_title {
    return Intl.message(
      'Error',
      name: 'error_title',
      desc: '',
      args: [],
    );
  }

  /// `Successfully logged in`
  String get auth_success {
    return Intl.message(
      'Successfully logged in',
      name: 'auth_success',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get name {
    return Intl.message(
      'name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `phone`
  String get phone {
    return Intl.message(
      'phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `father phone`
  String get father_phone {
    return Intl.message(
      'father phone',
      name: 'father_phone',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forget_password {
    return Intl.message(
      'Forget Password ?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With Google`
  String get sign_with_google {
    return Intl.message(
      'Sign In With Google',
      name: 'sign_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Learn anytime and anywhere`
  String get learn_any_time {
    return Intl.message(
      'Learn anytime and anywhere',
      name: 'learn_any_time',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Log_in {
    return Intl.message(
      'Login',
      name: 'Log_in',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get create_new_acc {
    return Intl.message(
      'Create New Account',
      name: 'create_new_acc',
      desc: '',
      args: [],
    );
  }

  /// `Please Go to Your Email Inbox,\n and click on the link for verification`
  String get check_inbox {
    return Intl.message(
      'Please Go to Your Email Inbox,\n and click on the link for verification',
      name: 'check_inbox',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
