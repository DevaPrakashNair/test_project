
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/data/models/Display_allModel.dart';
import 'package:test_project/data/repository.dart';

class AllBloc extends Bloc<AllEvent, AllState> {
  AllBloc() : super(AllState()) {
    on<CheckDisplay>(display_all);
  }

  Future<FutureOr<void>> display_all(
      CheckDisplay event, Emitter<AllState> emit) async {
    emit(CheckingDisplay());
    DisplayAllModel dis_allmodel;
    Map data = {

    };

    dis_allmodel =
    await Repository().display_all(url: '/user/all/user', data: data);
    if (dis_allmodel.status == true) {
      emit(DisplayChecked(display_allModel: dis_allmodel));
    } else {
      emit(DisplayError(error: dis_allmodel.msg.toString()));
    }
  }
}
//events
class AllEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckDisplay extends AllEvent {
}


class AllState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckingDisplay extends AllState {}
class DisplayChecked extends AllState {
  final DisplayAllModel? display_allModel;
  DisplayChecked({this.display_allModel});
}

class DisplayError extends AllState {
  final String error;
  DisplayError({required this.error});
}