// ignore_for_file: must_be_immutable

part of 'permissions_page_bloc.dart';

/// Represents the state of PersonalInfoPage in the application.
class PermissionsPageState extends Equatable {
  PermissionsPageState({
    this.permissionsPageModelObj,
  });

  PermissionsPageModel? permissionsPageModelObj;

  @override
  List<Object?> get props => [
    permissionsPageModelObj,
  ];
  PermissionsPageState  copyWith({
    PermissionsPageModel? permissionsPageModelObj,
  }) {
    return PermissionsPageState(
      permissionsPageModelObj:
      permissionsPageModelObj ?? this.permissionsPageModelObj,
    );
  }
}
