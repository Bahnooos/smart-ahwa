import 'package:smart_ahwa_manager_app/order_feature/data/order_model.dart';
import 'package:smart_ahwa_manager_app/report/data/report_model.dart';

class SalesReport implements ReportModel {
  @override
  Map<String, dynamic> generate(List<OrderModel> orders) {
    final total = orders.length;
    final topDrink = _findTopDrink(orders);

    return {"totalOrders": total, "topDrink": topDrink};
  }
String _findTopDrink(List<OrderModel> orders) {
  if (orders.isEmpty) return "No orders yet";

  final count = <String, int>{};
  for (var order in orders) {
    count[order.getDrinkName] = (count[order.getDrinkName] ?? 0) + 1;
  }
  

  final topEntry =
      count.entries.reduce((a, b) => a.value > b.value ? a : b);

  return "${topEntry.key} (${topEntry.value} orders)";
}
}
