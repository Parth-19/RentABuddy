// ignore_for_file: must_be_immutable

part of 'view_a_profile_bloc.dart';

/// Represents the state of ViewAProfile in the application.
class ViewAProfileState extends Equatable {
  ViewAProfileState({this.viewAProfileModelObj});

  ViewAProfileModel? viewAProfileModelObj;

  @override
  List<Object?> get props => [
        viewAProfileModelObj,
      ];
  ViewAProfileState copyWith({ViewAProfileModel? viewAProfileModelObj}) {
    return ViewAProfileState(
      viewAProfileModelObj: viewAProfileModelObj ?? this.viewAProfileModelObj,
    );
  }
}
