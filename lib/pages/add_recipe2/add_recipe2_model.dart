import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRecipe2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameRecipe widget.
  TextEditingController? nameRecipeController;
  String? Function(BuildContext, String?)? nameRecipeControllerValidator;
  // State field(s) for imagePath widget.
  TextEditingController? imagePathController;
  String? Function(BuildContext, String?)? imagePathControllerValidator;
  // State field(s) for descriptionRecipe widget.
  TextEditingController? descriptionRecipeController;
  String? Function(BuildContext, String?)? descriptionRecipeControllerValidator;
  // State field(s) for recipeDetail widget.
  TextEditingController? recipeDetailController;
  String? Function(BuildContext, String?)? recipeDetailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameRecipeController?.dispose();
    imagePathController?.dispose();
    descriptionRecipeController?.dispose();
    recipeDetailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
