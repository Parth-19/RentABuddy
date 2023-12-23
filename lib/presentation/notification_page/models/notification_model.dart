// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [notification_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel extends Equatable {
  NotificationModel({
    this.userprofileItemList = const [],
    this.userprofile1ItemList = const [],
  }) {}

  List<UserprofileItemModel> userprofileItemList;

  List<Userprofile1ItemModel> userprofile1ItemList;

  NotificationModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<Userprofile1ItemModel>? userprofile1ItemList,
  }) {
    return NotificationModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      userprofile1ItemList: userprofile1ItemList ?? this.userprofile1ItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList, userprofile1ItemList];
}
