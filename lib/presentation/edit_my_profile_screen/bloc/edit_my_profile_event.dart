// ignore_for_file: must_be_immutable

part of 'edit_my_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditMyProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditMyProfileEvent extends Equatable {}

/// Event that is dispatched when the EditMyProfile widget is first created.
class EditMyProfileInitialEvent extends EditMyProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends EditMyProfileEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends EditMyProfileEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends EditMyProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
