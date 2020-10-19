// import 'package:flutter/material.dart';
//
// import 'dart:developer' as developer;
//
// import 'package:get/get.dart';
//
// class LoadingDialogManager {
//   static final LoadingDialogManager _instance =
//       LoadingDialogManager._internal();
//
//   factory LoadingDialogManager() {
//     return _instance;
//   }
//
//   LoadingDialogManager._internal();
//
//   Future<T> performLoadingTask<T>(
//       Future<T> calculation, Function() onError) async {
//     _showLoadingDialog();
//     try {
//       T result = await calculation;
//       _hideLoadingDialog();
//       return result;
//     } catch (e) {
//       _hideLoadingDialog();
//       developer.log("Error: " + e.toString());
//       onError();
//     }
//     _hideLoadingDialog();
//     return null;
//   }
//
//   bool isLoading = false;
//
//   void _showLoadingDialog() {
//     isLoading = true;
//     CircularProgressIndicator();
//   }
//
//   void _hideLoadingDialog() {
//     if (isLoading) {
//       isLoading = false;
//       Get.back();
//     }
//   }
// }
