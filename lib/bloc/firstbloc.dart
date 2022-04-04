import 'dart:async';


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/data/models/LoginModel.dart';
import 'package:test_project/data/repository.dart';
import 'package:test_project/helper/sharedprefrences.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {

    on<CheckOTP>(_checkOtp);
  }



  Future<FutureOr<void>> _checkOtp(
      CheckOTP event, Emitter<AuthState> emit) async {
    emit(CheckingOtp());
    LoginModel loginModel;
    Map data = {
      "phone": event.phone,
      "password": event.otpNumber,
    };


    loginModel =
    await Repository().login(url: '/user/login', data: data);
    if (loginModel.status == true) {
      await TempStorage.addToken(loginModel.token.toString());
      emit(OtpChecked());
    } else {
      emit(OtpError(error: loginModel.msg.toString()));
    }
  }
}
//events
class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}



class CheckOTP extends AuthEvent {
  final String otpNumber, phone;
  CheckOTP({required this.otpNumber, required this.phone});
}


//states

class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingOtp extends AuthState {}
class OtpChecked extends AuthState {}

class OtpError extends AuthState {
  final String error;
  OtpError({required this.error});
}