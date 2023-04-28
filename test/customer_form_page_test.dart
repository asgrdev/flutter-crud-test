// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_see_button.dart';
import './step/the_custimer_with_credentials_doesnt_exist.dart';
import './step/i_enter_into_text_field.dart';
import './step/i_tap_button_and_wait.dart';
import './step/the_custimer_with_credentials_exist.dart';

void main() {
  group('''customer_form_page''', () {
    testWidgets('''form is presented''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeText(tester, 'Name');
      await iSeeText(tester, 'Family');
      await iSeeText(tester, 'BirthDate');
      await iSeeText(tester, 'PhoneNumber');
      await iSeeText(tester, 'Email');
      await iSeeText(tester, 'BankAccountNumber');
      await iSeeButton(tester, 'Save');
    });
    testWidgets('''add a new customer''', (tester) async {
      await theCustimerWithCredentialsDoesntExist(tester, 'alex', 'mockfamily', '1995/08/23', 'alexmock@gmail.com', '09001234567', '61656516151651');
      await theAppIsRunning(tester);
      await iEnterIntoTextField(tester, 'alex', 0);
      await iEnterIntoTextField(tester, 'mockfamily', 1);
      await iEnterIntoTextField(tester, '1995/08/23', 2);
      await iEnterIntoTextField(tester, '09001234567', 3);
      await iEnterIntoTextField(tester, 'alexmock@gmail.com', 4);
      await iEnterIntoTextField(tester, '61656516151651', 5);
      await iTapButtonAndWait(tester, 'save');
      await iSeeText(tester, 'Success');
    });
    testWidgets('''update a new customer''', (tester) async {
      await theCustimerWithCredentialsExist(tester, 'alex', 'mockfamily', '1995/08/23', 'alexmock@gmail.com', '09001234567', '61656516151651');
      await theAppIsRunning(tester);
      await iEnterIntoTextField(tester, 'lary', 0);
      await iEnterIntoTextField(tester, 'mockfamily', 1);
      await iEnterIntoTextField(tester, '1995/08/24', 2);
      await iEnterIntoTextField(tester, '09001230067', 3);
      await iEnterIntoTextField(tester, 'alexmock@gmail.com', 4);
      await iEnterIntoTextField(tester, '61656516151651', 5);
      await iTapButtonAndWait(tester, 'save');
      await iSeeText(tester, 'Success');
    });
  });
}
