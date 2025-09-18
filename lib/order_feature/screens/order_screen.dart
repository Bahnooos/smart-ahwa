import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/order_feature/data/order_lists.dart';
import 'package:smart_ahwa_manager_app/order_feature/data/order_model.dart';
import 'package:smart_ahwa_manager_app/order_feature/screens/order_details_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final OrderModel _orderModel = OrderModel(
    '_name',
    '_drinkType',
    '_specialInstructions',
  );
  final _nameController = TextEditingController();
  final _instructionsController = TextEditingController();
  String? _selectedDrink = 'Shai';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text('Add Order', style: TextStyle(fontSize: 24)),
              SizedBox(height: 30),

              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Customer Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: _selectedDrink,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Select Product',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                items: [
                  DropdownMenuItem(value: 'Coffe', child: Text('Coffe')),
                  DropdownMenuItem(value: 'Shai', child: Text('Shai')),
                  DropdownMenuItem(
                    value: 'hibiscus tea',
                    child: Text('hibiscus tea'),
                  ),
                ],
                onChanged: (String? value) => _selectedDrink = value,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _instructionsController,
                decoration: InputDecoration(
                  labelText: 'Special Instruction (option)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  final newOrder = OrderModel(
                    _nameController.text,
                    _selectedDrink ?? '',
                    _instructionsController.text,
                  );
                  setState(() {
                    orders.add(newOrder);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen(),
                    ),
                  ).then((_) => setState(() {}));
                },
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                child: Text('Add Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
