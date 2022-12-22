class API {
  final String baseUrl = "https://api.openweathermap.org/data/2.5";

  String oneDayApi(String city) {
    return "$baseUrl/weather?q=$city&appid=7b5bb8bf74220209b7fcdbfc2551db2c";
  }
 String fiveDaysApi(String city) {
    return "$baseUrl/forecast?q=$city&appid=7b5bb8bf74220209b7fcdbfc2551db2c";
  }

}
