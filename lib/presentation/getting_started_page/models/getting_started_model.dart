// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [getting_started_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GettingStartedModel extends Equatable {
  GettingStartedModel() {}

  GettingStartedModel copyWith() {
    return GettingStartedModel();
  }

  @override
  List<Object?> get props => [];
}
