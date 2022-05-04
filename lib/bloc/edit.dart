import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/data/models/DisplayModel.dart';
import 'package:test_project/data/repository.dart';

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(EditState()) {
    on<CheckDisplay>(display);
  }

  Future<FutureOr<void>> display(
      CheckDisplay event, Emitter<EditState> emit) async {
    emit(CheckingDisplay());
    DislayModel dismodel;
    Map data = {

    };

    dismodel =
    await Repository().dispay(url: '/edit/user', data: data);
    if (dismodel.status == true) {
      emit(DisplayChecked(displayModel: dismodel));
    } else {
      emit(DisplayError(error: dismodel.msg.toString()));
    }
  }
}
//events
class EditEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckDisplay extends EditEvent {
}


class EditState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingDisplay extends EditState {}
class DisplayChecked extends EditState {
  final DislayModel? displayModel;
  DisplayChecked({this.displayModel});
}

class DisplayError extends EditState {
  final String error;
  DisplayError({required this.error});
}