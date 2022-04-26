class DisplayAllModel {
  DisplayAllModel({
      this.status, 
      this.msg, 
      this.data,});

  DisplayAllModel.fromJson(dynamic json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  bool? status;
  String? msg;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['msg'] = msg;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.firstName, 
      this.lastName, 
      this.houseName, 
      this.place, 
      this.pincode, 
      this.mobileNumber, 
      this.status, 
      this.v,});

  Data.fromJson(dynamic json) {
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    houseName = json['houseName'];
    place = json['place'];
    pincode = json['pincode'];
    mobileNumber = json['mobileNumber'];
    status = json['status'];
    v = json['__v'];
  }
  String? id;
  String? firstName;
  String? lastName;
  String? houseName;
  String? place;
  String? pincode;
  int? mobileNumber;
  String? status;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['houseName'] = houseName;
    map['place'] = place;
    map['pincode'] = pincode;
    map['mobileNumber'] = mobileNumber;
    map['status'] = status;
    map['__v'] = v;
    return map;
  }

}