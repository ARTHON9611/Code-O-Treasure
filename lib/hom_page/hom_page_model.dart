import '/flutter_flow/flutter_flow_util.dart';
import 'hom_page_widget.dart' show HomPageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomPageModel extends FlutterFlowModel<HomPageWidget> {
  ///  Local state fields for this page.

  dynamic qrOutput;

  int? ansSubmit;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var qrResultCopy = '';
  AudioPlayer? soundPlayer;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
