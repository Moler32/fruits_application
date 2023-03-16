import 'package:fruits_application/data/fruits.dart';

abstract class FruitsRepository {
  void delete(int index);
  void rename(int index, String renamedFruit, String newDescription);
  Future<List<String>> fetchFruits();
  Future<List<String>> fetchDescriptions();
}

class FruitsRepositoryImpl extends FruitsRepository {
  FruitsRepositoryImpl();
  final Fruits _fruits = Fruits();

  @override
  void delete(int index) {
    _fruits.fruits.removeAt(index);
    _fruits.descriptions.removeAt(index);
  }

  @override
  void rename(int index, String renamedFruit, String newDescription) {
    _fruits.fruits[index] = renamedFruit;
    _fruits.descriptions[index] = newDescription;
  }

  @override
  Future<List<String>> fetchFruits() async {
    return _fruits.fruits;
  }

  @override
  Future<List<String>> fetchDescriptions() async {
    return _fruits.descriptions;
  }
}
