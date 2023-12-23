// ignore_for_file: must_be_immutable

part of 'my_profile_bloc.dart';

/// Represents the state of MyProfile in the application.
class MyProfileState extends Equatable {
  MyProfileState({
    this.advertisementsController,
    this.youSayWhatYouController,
    this.textInputController,
    this.myProfileModelObj,
  });

  TextEditingController? advertisementsController;

  TextEditingController? youSayWhatYouController;

  TextEditingController? textInputController;

  MyProfileModel? myProfileModelObj;

  @override
  List<Object?> get props => [
        advertisementsController,
        youSayWhatYouController,
        textInputController,
        myProfileModelObj,
      ];
  MyProfileState copyWith({
    TextEditingController? advertisementsController,
    TextEditingController? youSayWhatYouController,
    TextEditingController? textInputController,
    MyProfileModel? myProfileModelObj,
  }) {
    return MyProfileState(
      advertisementsController:
          advertisementsController ?? this.advertisementsController,
      youSayWhatYouController:
          youSayWhatYouController ?? this.youSayWhatYouController,
      textInputController: textInputController ?? this.textInputController,
      myProfileModelObj: myProfileModelObj ?? this.myProfileModelObj,
    );
  }
}
