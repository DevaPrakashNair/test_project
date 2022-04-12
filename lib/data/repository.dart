import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_project/data/models/DisplayModel.dart';
import 'package:test_project/data/models/LoginModel.dart';
import 'package:test_project/data/models/RegModel.dart';
import 'package:test_project/data/webclient.dart';

class Repository{
  Future<LoginModel> login({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final LoginModel loginModel = LoginModel.fromJson(response);
    return loginModel;
  }


  Future<RegModel> registraion({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final RegModel regModel = RegModel.fromJson(response);
    return regModel;
  }
  Future<DislayModel> dispay({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final DislayModel disModel = DislayModel.fromJson(response);
    return disModel;
  }
}