import '/flutter_flow/flutter_flow_util.dart';
import 'reportes_widget.dart' show ReportesWidget;
import 'package:flutter/material.dart';

class ReportesModel extends FlutterFlowModel<ReportesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtReporte widget.
  FocusNode? txtReporteFocusNode;
  TextEditingController? txtReporteTextController;
  String? Function(BuildContext, String?)? txtReporteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtReporteFocusNode?.dispose();
    txtReporteTextController?.dispose();
  }
}
