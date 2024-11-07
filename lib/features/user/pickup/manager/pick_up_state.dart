part of 'pick_up_cubit.dart';

@immutable
sealed class PickUpState {}

final class PickUpInitial extends PickUpState {}
final class PickUpMarker extends PickUpState {
  final Set<Marker> marker;

  PickUpMarker({required this.marker});
}
final class PickUpLocationSuccess extends PickUpState {
  final LatLng userLocation;

  PickUpLocationSuccess({required this.userLocation});
}
final class PickUpFailure extends PickUpState {
  final String errorMessage;

  PickUpFailure({required this.errorMessage});
}
