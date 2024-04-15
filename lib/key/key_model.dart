import '/flutter_flow/flutter_flow_util.dart';
import 'key_widget.dart' show KeyWidget;
import 'package:flutter/material.dart';

class KeyModel extends FlutterFlowModel<KeyWidget> {
  ///  Local state fields for this page.

  int? roundIndex;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
