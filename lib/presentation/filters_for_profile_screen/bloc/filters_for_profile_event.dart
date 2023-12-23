// ignore_for_file: must_be_immutable

part of 'filters_for_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FiltersForProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiltersForProfileEvent extends Equatable {}

/// Event that is dispatched when the FiltersForProfile widget is first created.
class FiltersForProfileInitialEvent extends FiltersForProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends FiltersForProfileEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends FiltersForProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FiltersForProfileEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
