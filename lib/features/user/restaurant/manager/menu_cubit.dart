
import 'package:flutter_bloc/flutter_bloc.dart';

import 'menu_state.dart';


class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitial());

  int numberOfItems=0;

  void addToItems()
  {
    numberOfItems++;
    emit(MenuInitial());
  }
}
