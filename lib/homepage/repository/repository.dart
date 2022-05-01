import 'dart:convert';
import 'dart:developer';

import 'package:cryptochain/homepage/models/trending_model.dart';
import 'package:cryptochain/utils/apis.dart';
import 'package:cryptochain/utils/constants.dart';

import 'package:http/http.dart' as http;

class HomepageRepository {
  // final storage = const FlutterSecureStorage();
  Future<TrendingModel> trendingMostVisited({jsonBody}) async {
    log(jsonBody.toString());
    var response = await http.get(
      Uri.parse(API.trendingMostVisited),
      // body: json.encode(jsonBody),
      headers: {'X-CMC_PRO_API_KEY': Constants.coninMarketAPIKey},
    );

    log(response.body.toString());

    var data = json.decode(response.body);

    TrendingModel model = TrendingModel.fromJson(data);
    return model;
  }
}
