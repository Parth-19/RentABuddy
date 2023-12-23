// ignore_for_file: must_be_immutable

part of 'facebook_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FacebookLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FacebookLoginEvent extends Equatable {}

/// Event that is dispatched when the FacebookLogin widget is first created.
class FacebookLoginInitialEvent extends FacebookLoginEvent {
  @override
  List<Object?> get props => [];
}
