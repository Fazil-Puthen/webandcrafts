import 'package:flutter/foundation.dart';
import 'package:mypcot/model/home_model.dart';
import 'package:mypcot/services/apiservice.dart';

class HomeDataProvider with ChangeNotifier {
  final FetchDataService _apiService = FetchDataService();
  HomeData? _homeData;
  bool _isLoading = false;
  String? _error;

  HomeData? get homeData => _homeData;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchHomeData() async {
    _isLoading = true;
    notifyListeners();
    try {
      _homeData = await _apiService.fetchapidata();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
