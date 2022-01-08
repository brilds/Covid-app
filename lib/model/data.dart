class Data {

  String country;
  int newconfirmed;
  int totalconfirmed;
  int totalrecovered;
  int totaldeaths;

  String get Country => country;

  Data({this.country, this.newconfirmed, this.totalconfirmed,
    this.totalrecovered, this.totaldeaths});

  factory Data.fromJson(Map<String, dynamic> json) =>
      Data(
        country: json['Country'],
        newconfirmed: json['NewConfirmed'] as int,
        totalconfirmed: json['TotalConfirmed'] as int,
        totalrecovered: json['TotalRecovered'] as int,
        totaldeaths: json['TotalDeaths'] as int
      );
}