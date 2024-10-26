
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'market_state.dart';

class MarketCubit extends Cubit<MarketState> {
  MarketCubit() : super(MarketInitial());


  final List<String> pollOptions = [];
  void deleteOption(int index) {

    pollOptions.removeAt(index);
    emit(MarketInitial());
  }
  void addOption(String text) {
    if (text.trim().isNotEmpty) {

      pollOptions.add(text.trim());
      emit(MarketInitial());
    }
  }
}
