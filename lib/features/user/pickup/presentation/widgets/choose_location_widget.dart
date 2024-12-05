import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';

import '../../../../../core/app_theme.dart';
import '../../../presentation/widgets/opened_google_maps_widget.dart';
import '../../../presentation/widgets/small_google_maps_widget.dart';
import '../../manager/pick_up_cubit.dart';

class ChooseLocationWidget extends StatefulWidget {
  const ChooseLocationWidget({super.key});

  @override
  State<ChooseLocationWidget> createState() => _ChooseLocationWidgetState();
}

class _ChooseLocationWidgetState extends State<ChooseLocationWidget> {
  @override
  void initState() {
    context.read<PickUpCubit>().getUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Theme.of(context).brightness == Brightness.light
          ? AppTheme.whiteBackground
          : AppTheme.darkGrey,
      openColor: Colors.transparent,
      closedElevation: 0,
      onClosed: (data) {
        setState(() {});
      },
      closedBuilder: (context, action) {
        return BlocProvider(
          create: (context) => PickUpCubit()..getUserLocation(),
          child:
          BlocBuilder<PickUpCubit, PickUpState>(builder: (context, state) {
            if (state is PickUpLocationSuccess) {
              return SmallGoogleMapsWidget(
                currentLocation: state.userLocation,
              );
            } else if (state is PickUpFailure) {
              Logger().e(state.errorMessage,error: "Location Error");

              return const CircularProgressIndicator(
                color: Colors.green,
              );
            } else {
              return const CircularProgressIndicator();
            }
          }),
        );
      },
      openBuilder: (context, action) {
        return BlocProvider(
          create: (context) => PickUpCubit(),
          child: const OpenedGoogleMapsWidget(
            markerId: MarkerId("pickup_location"),
          ),
        );
      },
    );
  }
}
