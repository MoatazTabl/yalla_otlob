import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SmallGoogleMapsWidget extends StatefulWidget {
  const SmallGoogleMapsWidget({
    super.key,
    required this.currentLocation,
  });

  final LatLng currentLocation;

  @override
  State<SmallGoogleMapsWidget> createState() => _SmallGoogleMapsWidgetState();
}

class _SmallGoogleMapsWidgetState extends State<SmallGoogleMapsWidget> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();


  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Center(
        child: SizedBox(
          height: 200.h,
          width: .9.sw,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: GoogleMap(
              mapType: MapType.normal,
              padding: EdgeInsets.zero,
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                  target: widget.currentLocation , zoom: 15),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ),
      ),
    );
  }
}
