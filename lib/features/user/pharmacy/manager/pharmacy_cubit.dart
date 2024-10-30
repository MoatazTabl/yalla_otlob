

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pharmacy_state.dart';

class PharmacyCubit extends Cubit<PharmacyState> {
  PharmacyCubit() : super(PharmacyInitial());

  final List<String> pollOptions = [];
  void deleteOption(int index) {

      pollOptions.removeAt(index);
   emit(PharmacyInitial());
  }
  void addOption(String text) {
    if (text.trim().isNotEmpty) {

        pollOptions.add(text.trim());
      emit(PharmacyInitial());
    }
  }

}
