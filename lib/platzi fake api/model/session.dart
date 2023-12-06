/// access_token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjgxLCJpYXQiOjE3MDE4ODA0NTIsImV4cCI6MTcwMzYwODQ1Mn0.yDZ4W9-C8ea7NswiZKa-UCW0_RpWnuwAUOWWyhfvyl0"
/// refresh_token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjgxLCJpYXQiOjE3MDE4ODA0NTIsImV4cCI6MTcwMTkxNjQ1Mn0.-f0YgPCV-FBMZEM0IaQZRtLlGKCVtiDsmG1wVEW6V7s"

class Session {
  String? accessToken;
  String? refreshToken;

  Session({
      String? accessToken,
      String? refreshToken,}){
    accessToken = accessToken;
    refreshToken = refreshToken;
}

  Session.fromJson(dynamic json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
  }



  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    return map;
  }

}