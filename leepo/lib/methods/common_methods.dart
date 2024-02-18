import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:flutter/material.dart';

class CommonMethods {
  checkConnectivity( BuildContext context) async {
    var connectionResult = await Connectivity().checkConnectivity();

    if(connectionResult != ConnectivityResult.mobile && connectionResult != ConnectivityResult.wifi){
      if(!context.mounted)return;
      displaySnackBar("Your Internet is not working.check your connection and Try again",context);

    }
  }

  displaySnackBar(String messageText,BuildContext context){
    var snackbar = SnackBar(content: Text(messageText));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}