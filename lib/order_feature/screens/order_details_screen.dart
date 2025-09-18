import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/order_feature/data/order_lists.dart';
import 'package:smart_ahwa_manager_app/order_feature/screens/widgets/details_widget.dart';
import 'package:smart_ahwa_manager_app/report/screen/report_screen.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Text('Orderd Details', style: TextStyle(fontSize: 24)),
          SizedBox(height: 30),
          DetailsWidget(
            title: 'Customer Name',
            subTitle: orders.last.getCustomerName,
          ),
          SizedBox(height: 20),
          DetailsWidget(
            title: 'Drink Type',
            subTitle: orders.last.getDrinkName,
          ),
          SizedBox(height: 20),

          DetailsWidget(
            title: 'Special Instructions',
            subTitle: orders.last.getSpecialInstructions,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReportScreen(),
                ),
              );
             
            },
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
            ),
            child: Text('Mark as Completed'),
          ),
        ],
      ),
    );
  }
}
