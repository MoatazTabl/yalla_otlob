import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../pickup/manager/pick_up_cubit.dart';
import 'confirm_button_widget.dart';

class OpenedGoogleMapsWidget extends StatefulWidget {
  const OpenedGoogleMapsWidget({
    super.key,
    required this.markerId,
  });

  final MarkerId markerId;

  @override
  State<OpenedGoogleMapsWidget> createState() => _OpenedGoogleMapsWidgetState();
}

class _OpenedGoogleMapsWidgetState extends State<OpenedGoogleMapsWidget>
     {
   late final GoogleMapController _controller;
  final Set<Marker> markers = {};


  void setMarkerLocation(CameraPosition position)
  {
    setState(() {
      markers.clear();

      markers.add(
        Marker(
          markerId: widget.markerId,
          position: position.target,
          icon: AssetMapBitmap(
            "assets/images/marker.bmp",
            bitmapScaling: MapBitmapScaling.auto,
            width: 40.w,
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickUpCubit(),
      child: Scaffold(
        body: BlocBuilder<PickUpCubit, PickUpState>(
          builder: (context, state) {
            return SizedBox(
              height: 1.sh,
              child: GoogleMap(
                onMapCreated: (controller) {
                  _controller=controller;
                },
                mapToolbarEnabled: false,
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                onCameraMove: (position) {
                  setMarkerLocation(position);
                },
                markers: markers,
                initialCameraPosition: PickUpCubit.dahabLocation,
              ),
            );
          },
        ),
        persistentFooterAlignment: AlignmentDirectional.center,
        persistentFooterButtons: [
          ConfirmButtonWidget(
            onPressed: () {
              BlocProvider
                  .of<PickUpCubit>(context)
                  .pickUpLocation = markers.first.position;
              context.pop();
            },
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
