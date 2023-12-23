// ignore_for_file: must_be_immutable

part of 'facebook_login_bloc.dart';

/// Represents the state of FacebookLogin in the application.
class FacebookLoginState extends Equatable {
  FacebookLoginState({this.facebookLoginModelObj});

  FacebookLoginModel? facebookLoginModelObj;

  @override
  List<Object?> get props => [
        facebookLoginModelObj,
      ];
  FacebookLoginState copyWith({FacebookLoginModel? facebookLoginModelObj}) {
    return FacebookLoginState(
      facebookLoginModelObj:
          facebookLoginModelObj ?? this.facebookLoginModelObj,
    );
  }
}
