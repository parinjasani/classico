import 'User.dart';
import 'Support.dart';

class Useresponse {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<User>? userlist;
  Support? support;

  Useresponse({
      this.page, 
      this.perPage, 
      this.total, 
      this.totalPages, 
      this.userlist,
      this.support,});

  Useresponse.fromJson(dynamic json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      userlist = [];
      json['data'].forEach((v) {
        userlist?.add(User.fromJson(v));
      });
    }
    support = json['support'] != null ? Support.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    map['per_page'] = perPage;
    map['total'] = total;
    map['total_pages'] = totalPages;
    if (userlist != null) {
      map['data'] = userlist?.map((v) => v.toJson()).toList();
    }
    if (support != null) {
      map['support'] = support?.toJson();
    }
    return map;
  }

}