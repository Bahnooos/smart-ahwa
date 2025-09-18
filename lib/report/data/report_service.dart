import 'package:smart_ahwa_manager_app/order_feature/data/order_model.dart';
import 'package:smart_ahwa_manager_app/report/data/report_model.dart';

class ReportService {
  final ReportModel _report;

  ReportService(this._report);

  Map<String, dynamic> generateReport(List<OrderModel> orders) {
    return _report.generate(orders);
  }
}
