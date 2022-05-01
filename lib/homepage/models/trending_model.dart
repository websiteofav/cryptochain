class TrendingModel {
  TrendingModel({
    required this.data,
    required this.status,
  });

  List<TrendingDataModel> data;
  Status status;

  factory TrendingModel.fromJson(Map<String, dynamic> json) => TrendingModel(
        data: List<TrendingDataModel>.from(
            json["data"].map((x) => TrendingDataModel.fromJson(x))),
        status: Status.fromJson(json["status"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "status": status.toJson(),
      };
}

class TrendingDataModel {
  TrendingDataModel({
    this.id,
    this.name,
    this.symbol,
    this.slug,
    this.cmcRank,
    this.numMarketPairs,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.lastUpdated,
    this.dateAdded,
    this.tags,
    this.platform,
    this.quote,
  });

  dynamic id;
  dynamic name;
  dynamic symbol;
  dynamic slug;
  dynamic cmcRank;
  dynamic numMarketPairs;
  dynamic circulatingSupply;
  dynamic totalSupply;
  dynamic maxSupply;
  DateTime? lastUpdated;
  DateTime? dateAdded;
  List<String>? tags;
  dynamic platform;
  Map<String, Quote>? quote;

  factory TrendingDataModel.fromJson(Map<String, dynamic> json) =>
      TrendingDataModel(
        id: json["id"],
        name: json["name"],
        symbol: json["symbol"],
        slug: json["slug"],
        cmcRank: json["cmc_rank"] == null ? null : json["cmc_rank"],
        numMarketPairs: json["num_market_pairs"],
        circulatingSupply: json["circulating_supply"],
        totalSupply: json["total_supply"],
        maxSupply: json["max_supply"],
        lastUpdated: DateTime.parse(json["last_updated"]),
        dateAdded: DateTime.parse(json["date_added"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        platform: json["platform"],
        quote: Map.from(json["quote"])
            .map((k, v) => MapEntry<String, Quote>(k, Quote.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "symbol": symbol,
        "slug": slug,
        "cmc_rank": cmcRank,
        "num_market_pairs": numMarketPairs,
        "circulating_supply": circulatingSupply,
        "total_supply": totalSupply,
        "max_supply": maxSupply,
        "last_updated": lastUpdated?..toIso8601String(),
        "date_added": dateAdded?..toIso8601String(),
        "tags": List<dynamic>.from(tags!.map((x) => x)),
        "platform": platform,
        "quote": Map.from(quote!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Quote {
  Quote({
    this.price,
    this.volume24H,
    this.percentChange1H,
    this.percentChange24H,
    this.percentChange7D,
    this.marketCap,
    this.lastUpdated,
  });

  double? price;
  int? volume24H;
  double? percentChange1H;
  double? percentChange24H;
  double? percentChange7D;
  int? marketCap;
  DateTime? lastUpdated;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        price: json["price"].toDouble(),
        volume24H: json["volume_24h"],
        percentChange1H: json["percent_change_1h"].toDouble(),
        percentChange24H: json["percent_change_24h"].toDouble(),
        percentChange7D: json["percent_change_7d"].toDouble(),
        marketCap: json["market_cap"],
        lastUpdated: DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "volume_24h": volume24H,
        "percent_change_1h": percentChange1H,
        "percent_change_24h": percentChange24H,
        "percent_change_7d": percentChange7D,
        "market_cap": marketCap,
        "last_updated": lastUpdated?..toIso8601String(),
      };
}

class Status {
  Status({
    this.timestamp,
    this.errorCode,
    this.errorMessage,
    this.elapsed,
    this.creditCount,
  });

  DateTime? timestamp;
  int? errorCode;
  String? errorMessage;
  int? elapsed;
  int? creditCount;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        timestamp: DateTime.parse(json["timestamp"]),
        errorCode: json["error_code"],
        errorMessage: json["error_message"],
        elapsed: json["elapsed"],
        creditCount: json["credit_count"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp?..toIso8601String(),
        "error_code": errorCode,
        "error_message": errorMessage,
        "elapsed": elapsed,
        "credit_count": creditCount,
      };
}


// INR


// {
// "data": [
// {
// "id": 1,
// "name": "Bitcoin",
// "symbol": "BTC",
// "slug": "bitcoin",
// "cmc_rank": 5,
// "is_active": true,
// "is_fiat": 0,
// "self_reported_circulating_supply": null,
// "self_reported_market_cap": null,
// "num_market_pairs": 500,
// "circulating_supply": 16950100,
// "total_supply": 16950100,
// "max_supply": 21000000,
// "last_updated": "2018-06-02T22:51:28.209Z",
// "date_added": "2013-04-28T00:00:00.000Z",
// "tags": [
// "mineable"
// ],
// "platform": null,
// "quote": {
// "USD": {
// "price": 9283.92,
// "volume_24h": 7155680000,
// "percent_change_1h": -0.152774,
// "percent_change_24h": 0.518894,
// "percent_change_7d": 0.986573,
// "market_cap": 158055024432,
// "last_updated": "2018-08-09T22:53:32.000Z"
// },
// "BTC": {
// "price": 1,
// "volume_24h": 772012,
// "percent_change_1h": 0,
// "percent_change_24h": 0,
// "percent_change_7d": 0,
// "market_cap": 17024600,
// "last_updated": "2018-08-09T22:53:32.000Z"
// }
// }
// },
// {
// "id": 1027,
// "name": "Ethereum",
// "symbol": "ETH",
// "slug": "ethereum",
// "num_market_pairs": 6360,
// "circulating_supply": 16950100,
// "total_supply": 16950100,
// "max_supply": 21000000,
// "last_updated": "2018-06-02T22:51:28.209Z",
// "date_added": "2013-04-28T00:00:00.000Z",
// "tags": [
// "mineable"
// ],
// "platform": null,
// "quote": {
// "USD": {
// "price": 1283.92,
// "volume_24h": 7155680000,
// "percent_change_1h": -0.152774,
// "percent_change_24h": 0.518894,
// "percent_change_7d": 0.986573,
// "market_cap": 158055024432,
// "last_updated": "2018-08-09T22:53:32.000Z"
// },
// "ETH": {
// "price": 1,
// "volume_24h": 772012,
// "percent_change_1h": 0,
// "percent_change_24h": 0,
// "percent_change_7d": 0,
// "market_cap": 17024600,
// "last_updated": "2018-08-09T22:53:32.000Z"
// }
// }
// }
// ],
// "status": {
// "timestamp": "2018-06-02T22:51:28.209Z",
// "error_code": 0,
// "error_message": "",
// "elapsed": 10,
// "credit_count": 1
// }
// }