import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_app_login/http/request.dart';
import 'package:getx_flutter_app_login/http/urls.dart';
import 'file:///F:/Projects/Mobile/Flutter/getx_flutter_app_login/lib/models/user_list_model.dart';

class HomeController extends GetxController {
  var userListData = List<Data>().obs;
  @override
  void onInit() {
    _apiGetUserList();
    super.onInit();
  }

  void _apiGetUserList() async {
    Future.delayed(
        Duration.zero,
            () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));

    Request request = Request(url: Url.urlUserList, body: null);
    request.get().then((value) {
      UserListModel userListModel =
      UserListModel.fromJson(json.decode(value.body));
      userListData.value = userListModel.data;
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }

  void deleteItem(int index) {
    userListData.removeAt(index);
  }
}