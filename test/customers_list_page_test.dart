// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_listview.dart';
import './step/i_see_button.dart';
import './step/i_see_item.dart';
import './step/i_tap_button_and_wait.dart';
import './step/item_deleted.dart';
import './step/i_see_data_in_customer_form_page.dart';

void main() {
  group('''customer_list_page''', () {
    testWidgets('''customers list is presented''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeListview(tester, 'customerslist');
      await iSeeButton(tester, 'add new custimer');
    });
    testWidgets('''delete user from customers list''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeListview(tester, 'customerslist');
      await iSeeItem(tester, 'customer.id');
      await iSeeButton(tester, 'icon.delete');
      await iTapButtonAndWait(tester, 'icon.delete');
      await itemDeleted(tester, 'customer.id');
    });
    testWidgets('''Edit customer data''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeListview(tester, 'customerslist');
      await iSeeItem(tester, 'customer.id');
      await iSeeButton(tester, 'icon.edit');
      await iTapButtonAndWait(tester, 'icon.edit');
      await iSeeDataInCustomerFormPage(tester, 'customer');
    });
  });
}
