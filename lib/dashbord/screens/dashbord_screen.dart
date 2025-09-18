import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/order_feature/data/order_lists.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  @override
  Widget build(BuildContext context) {
    var newOrder = [];
    newOrder.addAll(orders);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30),
            Text('Smart Ahwa ', style: TextStyle(fontSize: 24)),
            Text('Manager', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Pending orders', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            orders.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: newOrder.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text(
                            newOrder[index].getCustomerName,
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                newOrder[index].getDrinkName,
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                newOrder[index].getSpecialInstructions,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
