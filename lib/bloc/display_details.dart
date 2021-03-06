import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/data/models/DisplayModel.dart';
import 'package:test_project/data/repository.dart';



class DisBloc extends Bloc<DisEvent, DisState> {
  DisBloc() : super(DisState()) {
    on<CheckDisplay>(display);
  }

  Future<FutureOr<void>> display(
      CheckDisplay event, Emitter<DisState> emit) async {
    emit(CheckingDisplay());
    DislayModel dismodel;
    Map data = {

    };

    dismodel =
    await Repository().dispay(url: '/user/profile', data: data);
    if (dismodel.status == true) {
      emit(DisplayChecked(displayModel: dismodel));
    } else {
      emit(DisplayError(error: dismodel.msg.toString()));
    }
  }
}
//events
class DisEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckDisplay extends DisEvent {
}


class DisState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingDisplay extends DisState {}
class DisplayChecked extends DisState {
  final DislayModel? displayModel;
  DisplayChecked({this.displayModel});
}

class DisplayError extends DisState {
  final String error;
  DisplayError({required this.error});
}