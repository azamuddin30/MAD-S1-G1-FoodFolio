import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomepageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;
  List<RecipeRecord> simpleSearchResults = [];
  // State field(s) for QueryTextField widget.
  TextEditingController? queryTextFieldController;
  String? Function(BuildContext, String?)? queryTextFieldControllerValidator;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    queryTextFieldController?.dispose();
    listViewController1?.dispose();
    listViewController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
