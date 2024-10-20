import 'package:flutter/material.dart';

class MenuAppController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
  void closeDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.closeDrawer();
    }
  }

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  Map<String, dynamic>? _parameters = {};
  Map<String, dynamic>? get parameters => _parameters;

  void changeScreen(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void changeScreenWithParams(int routeName,
      { required Map<String, dynamic> parameters}) {
    _selectedIndex = routeName;
    _parameters = parameters;
    notifyListeners();
  }


  ////////////////like tabibi//


  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
  ///////////toggle switch/////
  bool _isNotification = false;

  bool get isNotification => _isNotification;


  setNotification(notification){
    _isNotification = notification;
    notifyListeners();
  }
}
