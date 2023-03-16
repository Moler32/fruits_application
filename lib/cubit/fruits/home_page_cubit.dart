import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_application/repositories/fruits_repositories.dart';

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(const HomePageState.loading());

  final FruitsRepositoryImpl _fruitsRepositoryImpl = FruitsRepositoryImpl();

  List<String> _fruits = [];
  List<String> _descriptions = [];

  Future<void> fetchFruits() async {
    try {
      emit(const HomePageState.loading());
      await Future.delayed(const Duration(milliseconds: 500));
      await _getFruits();
      await _getDescriptions();
      if (_fruits.isEmpty) {
        emit(const HomePageState.emtyList());
      } else {
        emit(HomePageState.loadedList(_fruits, _descriptions));
      }
    } catch (e) {
      emit(HomePageState.error(e.toString()));
    }
  }

  Future<void> deleteFruit(int index) async {
    try {
      emit(const HomePageState.loading());
      await Future.delayed(const Duration(milliseconds: 500));
      _fruitsRepositoryImpl.delete(index);
      await _getFruits();
      if (_fruits.isEmpty) {
        emit(const HomePageState.emtyList());
      } else {
        emit(HomePageState.loadedList(_fruits, _descriptions));
      }
    } catch (e) {
      emit(HomePageState.error(e.toString()));
    }
  }

  Future<void> editFruit(
      int index, String renamedFruit, String newDescription) async {
    try {
      emit(const HomePageState.loading());
      await Future.delayed(const Duration(milliseconds: 500));
      await _getFruits();
      _fruitsRepositoryImpl.rename(index, renamedFruit, newDescription);
      emit(HomePageState.loadedList(_fruits, _descriptions));
    } catch (e) {
      emit(HomePageState.error(e.toString()));
    }
  }

  Future<List<String>> _getFruits() async {
    _fruits = await _fruitsRepositoryImpl.fetchFruits();
    return _fruits;
  }

  Future<List<String>> _getDescriptions() async {
    _descriptions = await _fruitsRepositoryImpl.fetchDescriptions();
    return _descriptions;
  }
}
