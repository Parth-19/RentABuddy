// ignore_for_file: must_be_immutable

part of 'view_a_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewAProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewAProfileEvent extends Equatable {}

/// Event that is dispatched when the ViewAProfile widget is first created.
class ViewAProfileInitialEvent extends ViewAProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ViewAProfileEvent {
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

///Event for changing ChipView selection
class UpdateChipView1Event extends ViewAProfileEvent {
  UpdateChipView1Event({
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
