import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/dashbord/screens/dashbord_screen.dart';
import 'package:smart_ahwa_manager_app/order_feature/data/order_lists.dart';
import 'package:smart_ahwa_manager_app/report/data/report_service.dart';
import 'package:smart_ahwa_manager_app/report/data/sales_report.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reportService = ReportService(SalesReport());
    final summary = reportService.generateReport(orders);

    final totalOrders = summary["totalOrders"];
    final topDrink = summary["topDrink"];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30),
            Text('Report', style: TextStyle(fontSize: 24)),
            SizedBox(height: 30),
            Card(
              child: ListTile(
                title: Text('Total Orders', style: TextStyle(fontSize: 18)),
                subtitle: Text('$totalOrders', style: TextStyle(fontSize: 14)),
              ),
            ),
            SizedBox(height: 30),
            Card(
              child: ListTile(
                title: Text('Top Drink', style: TextStyle(fontSize: 18)),
                subtitle: Text('$topDrink', style: TextStyle(fontSize: 14)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashbordScreen()),
                );
              },
              child: Text('Go to Dashbord'),
            ),
          ],
        ),
      ),
    );
  }
}
