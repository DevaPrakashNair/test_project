class RegModel {
  RegModel({
      this.status, 
      this.msg, 
      this.user,});

  RegModel.fromJson(dynamic json) {
    status = json['status'];
    msg = json['msg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? status;
  String? msg;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['msg'] = msg;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.firstName, 
      this.lastName, 
      this.houseName, 
      this.place, 
      this.pincode, 
      this.mobileNumber, 
      this.status, 
      this.id, 
      this.v,});

  User.fromJson(dynamic json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    houseName = json['houseName'];
    place = json['place'];
    pincode = json['pincode'];
    mobileNumber = json['mobileNumber'];
    status = json['status'];
    id = json['_id'];
    v = json['__v'];
  }
  String? firstName;
  String? lastName;
  String? houseName;
  String? place;
  String? pincode;
  int? mobileNumber;
  String? status;
  String? id;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['houseName'] = houseName;
    map['place'] = place;
    map['pincode'] = pincode;
    map['mobileNumber'] = mobileNumber;
    map['status'] = status;
    map['_id'] = id;
    map['__v'] = v;
    return map;
  }

}