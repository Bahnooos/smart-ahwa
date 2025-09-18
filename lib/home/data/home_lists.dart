import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/dashbord/screens/dashbord_screen.dart';
import 'package:smart_ahwa_manager_app/order_feature/screens/order_screen.dart';
import 'package:smart_ahwa_manager_app/report/screen/report_screen.dart';

List<Widget> bottomNavigationPages = [
 
  const DashbordScreen(),
  const OrderScreen(),
  const ReportScreen(),
];