import 'package:flutter/material.dart';

import 'package:myapp/models/coindatamodel.dart';
import 'package:myapp/request/coins_api.dart';

class CoinsController extends ChangeNotifier {
  static CoinsController instance = CoinsController.internal();
  CoinsController.internal();
  factory CoinsController() => instance;

  String selectedCurrency = "INR";

  set UpdateCurrency(value) {
    selectedCurrency = value;
    notifyListeners();
  }

  CoinsDataModel? btc;
  CoinsDataModel? eth;
  CoinsDataModel? ltc;

  fetchCoinsData() async {
    await CoinsApi()
        .convertCurrency(crypto: "BTC", currency: "selectedCurrency");
    await CoinsApi()
        .convertCurrency(crypto: "ETH", currency: "selectedCurrency");
    await CoinsApi()
        .convertCurrency(crypto: "LTC", currency: "selectedCurrency");
  }
}
