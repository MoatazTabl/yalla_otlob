import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'pick_up_state.dart';

class PickUpCubit extends Cubit<PickUpState> {
  PickUpCubit() : super(PickUpInitial());

  static const CameraPosition dahabLocation = CameraPosition(
    target: LatLng(28.508405000812132, 34.51613708747699),
    zoom: 15.6,
  );
  LatLng? pickUpLocation;
  LatLng? destinationLocation;


Future<void> getUserPermission() async {
  bool serviceEnabled;
  LocationPermission permission;
  // Check if location services are enabled
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return;
  }
  // Request permission to get the user's location
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.deniedForever) {
    return;
  }
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission != LocationPermission.whileInUse &&
        permission != LocationPermission.always) {
      return;
    }
  }

}

Future<void> getUserLocation() async {
// Get the current location of the user
  try {
    var currentPosition = await Geolocator.getCurrentPosition();

    var userLocation = LatLng(currentPosition.latitude, currentPosition.longitude);
    emit(PickUpLocationSuccess(userLocation: userLocation));
  } on Exception catch (e) {
    emit(PickUpFailure(errorMessage: e.toString()));
  }
}


}

// void removeMarker(MarkerId markerId) {
//   final updatedMarkers = state.where((marker) => marker.markerId != markerId).toSet();
//   emit(updatedMarkers);
// }
