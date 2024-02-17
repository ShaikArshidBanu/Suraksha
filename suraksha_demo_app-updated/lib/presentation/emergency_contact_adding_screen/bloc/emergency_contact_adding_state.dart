// ignore_for_file: must_be_immutable

part of 'emergency_contact_adding_bloc.dart';

/// Represents the state of PersonalInfoPage in the application.
class EmergencyContactAddingState extends Equatable {
  EmergencyContactAddingState({
    this.priceController,
    this.emergencyContactAddingModelObj
  });

  TextEditingController? priceController;

  EmergencyContactAddingModel? emergencyContactAddingModelObj;

  @override
  List<Object?> get props => [
    priceController,
    emergencyContactAddingModelObj,
  ];

  EmergencyContactAddingState  copyWith({
    TextEditingController? priceController,
    EmergencyContactAddingModel? emergencyContactAddingModelObj,
  }) {
    return EmergencyContactAddingState(
      priceController: priceController ?? this.priceController,
      emergencyContactAddingModelObj:
      emergencyContactAddingModelObj ?? this.emergencyContactAddingModelObj,
    );
  }
}