import 'package:smart_ahwa_manager_app/order_feature/data/order_model.dart';

abstract class ReportModel {
  Map<String, dynamic> generate(List<OrderModel> orders);
}
