import '/flutter_flow/flutter_flow_util.dart';
import 'crear_barbero_widget.dart' show CrearBarberoWidget;
import 'package:flutter/material.dart';

class CrearBarberoModel extends FlutterFlowModel<CrearBarberoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtPrimerApellido widget.
  FocusNode? txtPrimerApellidoFocusNode;
  TextEditingController? txtPrimerApellidoTextController;
  String? Function(BuildContext, String?)?
      txtPrimerApellidoTextControllerValidator;
  // State field(s) for txtSegundoApellido widget.
  FocusNode? txtSegundoApellidoFocusNode;
  TextEditingController? txtSegundoApellidoTextController;
  String? Function(BuildContext, String?)?
      txtSegundoApellidoTextControllerValidator;
  // State field(s) for txtRating widget.
  FocusNode? txtRatingFocusNode;
  TextEditingController? txtRatingTextController;
  String? Function(BuildContext, String?)? txtRatingTextControllerValidator;
  // State field(s) for txtEspecialidades widget.
  FocusNode? txtEspecialidadesFocusNode;
  TextEditingController? txtEspecialidadesTextController;
  String? Function(BuildContext, String?)?
      txtEspecialidadesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtPrimerApellidoFocusNode?.dispose();
    txtPrimerApellidoTextController?.dispose();

    txtSegundoApellidoFocusNode?.dispose();
    txtSegundoApellidoTextController?.dispose();

    txtRatingFocusNode?.dispose();
    txtRatingTextController?.dispose();

    txtEspecialidadesFocusNode?.dispose();
    txtEspecialidadesTextController?.dispose();
  }
}
