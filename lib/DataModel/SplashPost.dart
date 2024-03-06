import 'dart:convert';

class SplashPost {
  String deviceType;
  String deviceId;
  String deviceName;
  String deviceOsVersion;
  String deviceIpAddress;
  double lat;
  double long;
  String buyerGcmid;
  String buyerPemid;
  App app;

  SplashPost({
    required this.deviceType,
    required this.deviceId,
    required this.deviceName,
    required this.deviceOsVersion,
    required this.deviceIpAddress,
    required this.lat,
    required this.long,
    required this.buyerGcmid,
    required this.buyerPemid,
    required this.app,
  });

  factory SplashPost.fromJson(String str) =>
      SplashPost.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SplashPost.fromMap(Map<String, dynamic> json) => SplashPost(
        deviceType: json["deviceType"],
        deviceId: json["deviceId"],
        deviceName: json["deviceName"],
        deviceOsVersion: json["deviceOSVersion"],
        deviceIpAddress: json["deviceIPAddress"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        buyerGcmid: json["buyer_gcmid"],
        buyerPemid: json["buyer_pemid"],
        app: App.fromMap(json["app"]),
      );

  Map<String, dynamic> toMap() => {
        "deviceType": deviceType,
        "deviceId": deviceId,
        "deviceName": deviceName,
        "deviceOSVersion": deviceOsVersion,
        "deviceIPAddress": deviceIpAddress,
        "lat": lat,
        "long": long,
        "buyer_gcmid": buyerGcmid,
        "buyer_pemid": buyerPemid,
        "app": app.toMap(),
      };
}

class App {
  String version;
  DateTime installTimeStamp;
  DateTime uninstallTimeStamp;
  DateTime downloadTimeStamp;

  App({
    required this.version,
    required this.installTimeStamp,
    required this.uninstallTimeStamp,
    required this.downloadTimeStamp,
  });

  factory App.fromJson(String str) => App.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory App.fromMap(Map<String, dynamic> json) => App(
        version: json["version"],
        installTimeStamp: DateTime.parse(json["installTimeStamp"]),
        uninstallTimeStamp: DateTime.parse(json["uninstallTimeStamp"]),
        downloadTimeStamp: DateTime.parse(json["downloadTimeStamp"]),
      );

  Map<String, dynamic> toMap() => {
        "version": version,
        "installTimeStamp": installTimeStamp.toIso8601String(),
        "uninstallTimeStamp": uninstallTimeStamp.toIso8601String(),
        "downloadTimeStamp": downloadTimeStamp.toIso8601String(),
      };
}
