import 'dart:async';


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/data/models/RegModel.dart';
import 'package:test_project/data/repository.dart';


import 'package:test_project/helper/sharedprefrences.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc() : super(RegState()) {

    on<CheckOTP>(_checkOTP);
  }

  Future<FutureOr<void>> _checkOTP(
      CheckOTP event, Emitter<RegState> emit) async {
    emit(CheckingOtp());
    RegModel regmodel;
    Map data = {
      "firstname": event.fname,
      "lastname":event.lname,
      "phone":event.phone,
      "houseName":event.hname,
      "place":event.place,
      "pincode":event.pin,
      "password": event.password,
    };


    regmodel =
    await Repository().registraion(url: '/user/registration', data: data);
    if (regmodel.status == true) {
      // await TempStorage.addToken(regmodel.token.toString());
      emit(OtpChecked());
    } else {
      emit(OtpError(error: regmodel.msg.toString()));
    }
  }
}
//events
class RegEvent extends Equatable {
  @override
  List<Object?> get props => [];
}



class CheckOTP extends RegEvent {
  final String fname,lname,phone,hname,place,pin,password;
  CheckOTP({required this.fname,required this.lname,required this.hname,required this.place,required this.pin,required this.password, required this.phone});
}


//states

class RegState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingOtp extends RegState {}
class OtpChecked extends RegState {}

class OtpError extends RegState {
  final String error;
  OtpError({required this.error});
}